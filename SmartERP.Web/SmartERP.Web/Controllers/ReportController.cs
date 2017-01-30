#region Using

using SmartERP.Web.Repository;
using System.Web.Mvc;
using SmartERP.Entity.Model.User;
using System.Collections.Generic;
using SmartERP.Web.Utilities;
using SmartERP.Web.Models;
using System.Linq;
using SmartERP.Entity.Model.Log;
using System;

#endregion

namespace SmartERP.Web.Controllers
{
    [AuthorizeUser]
    public class ReportController : BaseController
    {
        // GET: home/index
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult InvoiceReport(int? invoicenumber)
        {
            
            ReportModel report = new ReportModel();
            report.Parameters = new Dictionary<string, string>();

            report.Parameters.Add("InvoiceNo", invoicenumber.GetValueOrDefault(0).ToString());
            report.Results = _reportService.SalesInvoiceRepo.GetReportResult( report.Parameters , "InvoicePrinting");
            return View( report);
        }
        public PartialViewResult _ReportHeader()
        {
            ViewBag.ReportHeading = "invoice Reports";
            return PartialView("_ReportHeader");
        }
        public PartialViewResult _ReportFooter()
        {
            ViewBag.ReportDate = "Generated Date: " + DateTime.UtcNow.Date.ToShortDateString();
            return PartialView("_ReportFooter");
        }
    }
}