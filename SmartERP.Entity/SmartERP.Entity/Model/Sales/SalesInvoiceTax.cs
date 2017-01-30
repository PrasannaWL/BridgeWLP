using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{ 
    public partial class SalesInvoiceTax: BaseEntity
    {
        public int InvoiceNo { get; set; }
        public int TaxCode { get; set; }
        public int LedgerCode { get; set; }
        public int PriorityOrder { get; set; }
        public decimal Amount { get; set; }
    }
}
