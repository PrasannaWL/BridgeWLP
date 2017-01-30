using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{  
    public partial class SalesOrderItem : BaseEntity
    {
        public int OrderDcode { get; set; }
        public int OrderNo { get; set; }
        public int ItemCode { get; set; }
        public decimal OrderedQuantity { get; set; }
        public decimal ListRate { get; set; }
        public decimal TradeDiscount { get; set; }
        public decimal FlexiTradeDiscount { get; set; }
        public decimal Rate { get; set; }
        public decimal BillValue { get; set; }
        public int TaxSubTypeCode { get; set; }
        public int TaxTemplateCode { get; set; }
        public decimal TotalCancelledQuantity { get; set; }
        public decimal ReasonforCancellation { get; set; }
        public decimal LastCancelledQuantity { get; set; }
        public decimal HandlingCharges { get; set; }
        public decimal Charity { get; set; }
        public DateTime ExpiryDate { get; set; }
        public decimal BilledQuantity { get; set; }
    }
}
