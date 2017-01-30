using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{   
    public partial class SalePickListDetail : BaseEntity
    {
        public int PickListHeaderCode { get; set; }
        public int ItemCode { get; set; }
        public decimal PickListQuantity { get; set; }
        public string ispackedItem { get; set; }
        public string Iscancelled { get; set; }
        public string CancelledReason { get; set; }
        public DateTime? CancelledDate { get; set; }
        public int? CancelledBy { get; set; }
    }
}
