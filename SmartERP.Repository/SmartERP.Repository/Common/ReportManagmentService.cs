using SmartERP.Entity.Model;
using SmartERP.Entity.Model.Configuration;
using SmartERP.Repository.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartERP.Repository.Common
{

    public class SalesInvoiceReportsRepository : ReportRepository<SalesInvoice>
    {

        public SalesInvoiceReportsRepository() : base()
        {
        }

    }
    public class ReportManagmentService
    {
        
        public SalesInvoiceReportsRepository SalesInvoiceRepo { get; set; }
        public ReportManagmentService()
        {
            CreateOrExtends();
        }
        public void CreateOrExtends()
        {
            SalesInvoiceRepo = new SalesInvoiceReportsRepository();
            
            //do something 

        }
    
        
        
        //make you logic ... and carry on... and avoid multiple instance of repostory in controller...

   

    }

}




