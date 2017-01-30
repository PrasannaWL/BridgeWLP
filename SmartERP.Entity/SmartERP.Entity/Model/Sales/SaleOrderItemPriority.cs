using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{
    public partial class SaleOrderItemPriority : BaseEntity
    {
        public int PriorityCode { get; set; }
        public int OrderNo { get; set; }
        public short orderTypeCode { get; set; }
        public int Itemcode { get; set; }
        public decimal AlottedQty { get; set; }
        public decimal RemainingQty { get; set; }
        public int PriorityNo { get; set; }
        public System.DateTime AllotedDate { get; set; }
        public decimal TBBQty { get; set; }
        public int NoofTimeAlotted { get; set; }
    }
}
