using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{
    public partial class SalesInvoiceDiscount : BaseEntity
    {
        public int InvoiceDiscountCode { get; set; }
        public int InvoiceNo { get; set; }
        public int DiscountCode { get; set; }
        public decimal Amount { get; set; }
        public decimal ReturnedAmount { get; set; }
        public string DiscountApply { get; set; }
        public decimal DiscountPercentage { get; set; }
        public string IsConsideredForPE { get; set; }
    }
}
