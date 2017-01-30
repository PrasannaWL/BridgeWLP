using AutoMapper;
using SmartERP.Entity.Model;
using SmartERP.Entity.Model.Common;
using SmartERP.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartERP.Web.Controllers
{
    public class AllocationController : BaseController
    {
        public AllocationController()
        {

            Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<Allocation, AllocationItemBilledViewModel>();
                cfg.CreateMap<AllocationItemBilledViewModel, Allocation>();

            });
        }

        // GET: Allocation
        public ActionResult Index()
        {
            var doSelectList = new List<SelectListItem>();
            doSelectList.Add(new SelectListItem() { Value = "0", Text = "SALE ORDER" });
           
            var ordSelectList = new List<SelectListItem>();
            ordSelectList.Add(new SelectListItem() { Value = "0", Text = "MPO ORDER" });
            ordSelectList.Add(new SelectListItem() { Value = "1", Text = "NPO TRANSFER" });

            AllocationViewModel model = new AllocationViewModel();
            model.DocumentTypeList = doSelectList;
            model.OrderTypeList = ordSelectList;
            return View(model);
        }


        public ActionResult Allocation(AllocationViewModel model)
        {

            ViewBag.Title = "Allocation";
            ViewBag.PageHeader = "Allocation";

            List<AllocationItemBilledViewModel> modelList = new List<AllocationItemBilledViewModel>();
            List<Allocation> allocationList = _saleRepository.GetAllocation();

            modelList = Mapper.Map<List<Allocation>, List<AllocationItemBilledViewModel>>(allocationList);
            return View(modelList);
        }

        [HttpPost]
        public ActionResult SubmitAllocation(AllocationItemBilledViewModel[] viewModel) //when submits
        {

            if (!ModelState.IsValid)
                return View(viewModel);

            try
            {

                var distinctOrder = viewModel.Where(i => i.IsBilled == true)
                                            .Select(i => i.OrderNo)
                                            .Distinct().ToList();


                foreach (var order in distinctOrder)
                {
                    int headerCode = 0;
                    var itemArr = viewModel.Where(x => x.OrderNo == order);
                    //Header
                    var itemArrBarCodeEnabled = itemArr.Where(i => i.BarCodeApplicable == "Y").ToArray();
                    if (itemArrBarCodeEnabled != null)
                    {
                        headerCode = InsertSalePickListHeader(order, true);
                        if (headerCode != 0)
                        {
                            InsertSalePickListDetails(headerCode, itemArrBarCodeEnabled);
                        }
                    }
                    //Detail
                    var itemArrBarCodeNotEnabled = itemArr.Where(i => i.BarCodeApplicable == "N").ToArray();
                    if (itemArrBarCodeNotEnabled != null)
                    {
                        headerCode = InsertSalePickListHeader(order, false);
                        if (headerCode != 0)
                        {
                            InsertSalePickListDetails(headerCode, itemArrBarCodeNotEnabled);
                        }
                    }
                }

                return RedirectToAction("BusinessCenters");
            }
            catch (Exception ex)
            {
                return View(viewModel);
            }
        }

        private int InsertSalePickListHeader(int ordNo, bool IsBarCodeEnabled )
        {
            SalePickListHeader header = new SalePickListHeader();
            header.Type = "S";
            header.OrderNo = ordNo;
            header.BarCodeEnabled = IsBarCodeEnabled  ? "Y" : "N";
            header.InvoiceStatus = "P";
            return _salePickListHeaderRepository.Insert(header);
        }

        private void InsertSalePickListDetails(int id, AllocationItemBilledViewModel[] allocationArr)
        {

            foreach( var allocation in allocationArr)
            {
                SalePickListDetail detail = new SalePickListDetail();
                detail.PickListHeaderCode = id;
                detail.PickListQuantity = allocation.PickListQuantity.GetValueOrDefault(0);
                detail.ispackedItem = allocation.IsPackedItem;
               
            }
            
        }
    }
}