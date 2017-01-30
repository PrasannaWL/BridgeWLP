#region Using

using SmartERP.Entity.Model.User;
using SmartERP.Repository.Core;
using SmartERP.Web.Models;
using System.Collections.Generic;
using System.Web.Mvc;
using System;
using System.Linq;
using SmartERP.Web.Utilities;
using SmartERP.Entity.Model.Configuration;
using AutoMapper;
using System.Data.Entity.Validation;
using SmartERP.Entity.Model.Discount;
#endregion

namespace SmartERP.Web.Controllers
{
    [AuthorizeUser]
    public class DiscountController : BaseController
    {
        public DiscountController()
        {

            Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<Discounts, DiscountsViewModel>();
                cfg.CreateMap<DiscountsViewModel, Discounts>();
                
            });
        }

        #region Schemes
        // GET: /discount/schemes
        [AllowAnonymous]
        public ActionResult Schemes()
        {
            DiscountSchemesViewModel discountSchemesViewModel = new DiscountSchemesViewModel();
            discountSchemesViewModel.DiscountTypes = PopulateDiscounts();
            return View(discountSchemesViewModel);
        }

        // POST: /account/login
        [HttpPost]
        [AllowAnonymous]
        public ActionResult Schemes(DiscountSchemesViewModel discountSchemesViewModel, string submitButton)
        {
            discountSchemesViewModel.DiscountTypes = PopulateDiscounts();
            if(submitButton=="AddNewScheme")
            {
                //Pass selected discount type and redirect to Scheme page
                return RedirectToAction("Scheme", "Discount", new { discountId = discountSchemesViewModel.DiscountType });
            }
            else
            {
                //Get the schemes based on selected Discount type
                return View(discountSchemesViewModel);
            }
        }

        public List<SelectListItem> PopulateDiscounts()
        {
            var discounts = _userManagmentService.DiscountsRepo.GetAll();
            var listValues = new List<SelectListItem>();

            if (discounts != null && discounts.Any())
            {
                foreach (var item in discounts)
                {
                    listValues.Add(new SelectListItem { Text = item.DiscountName, Value = item.Id.ToString() });
                }
            }
            return listValues;
        }

        #endregion Schemes

        #region Scheme
        // GET: /discount/schemes
        [AllowAnonymous]
        public ActionResult Scheme()
        {
            DiscountSchemesViewModel discountSchemesViewModel = new DiscountSchemesViewModel();
            return View(discountSchemesViewModel);
        }

        // POST: /account/login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Scheme(DiscountSchemesViewModel discountSchemesViewModel)
        {
            return View(discountSchemesViewModel);
        }

        #endregion Scheme
    }
}