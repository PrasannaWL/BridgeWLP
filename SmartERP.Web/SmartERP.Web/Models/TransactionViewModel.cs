using SmartERP.Entity.Model.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartERP.Web.Models
{
    public class TransactionViewModel
    {
    }

    public class AllocationViewModel
    {
        public string DocumentType { get; set; }
        public IEnumerable<SelectListItem> DocumentTypeList { get; set; }
       
        public IEnumerable<SelectListItem> OrderTypeList { get; set; }       
        public string OrderType { get; set; }

    }

    public class AllocationItemBilledViewModel : Allocation
    {
        
        public bool IsBilled { get; set; }

        public decimal? PickListQuantity { get; set; }
    }

    public class AllocationItemDespatchedViewModel
    {
        public string ItemCode { get; set; }
        public string ItemDescription { get; set; }
        public string PSG { get; set; }
        public decimal? OrderedQuantity { get; set; }
        public decimal? IssuedQuantity { get; set; }
        public decimal? CancelledQuantity { get; set; }
        public decimal? AllotedQuantity { get; set; }
        public bool IsMPADiscountEligible { get; set; }
        public string MPOAdvance { get; set; }
        public bool IsModVatInvoice { get; set; }

    }
}