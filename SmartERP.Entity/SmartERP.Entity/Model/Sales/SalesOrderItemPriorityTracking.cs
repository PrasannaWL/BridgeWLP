using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{
    public partial class SalesOrderItemPriorityTracking : BaseEntity
    {
        public int PriorityCode { get; set; }
        public DateTime AllocatedDate { get; set; }
        public decimal AllocatedQty { get; set; }
        public DateTime? ExpiryDate { get; set; }
        public string Expired { get; set; }
    }
}
