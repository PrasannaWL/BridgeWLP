using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{ 
  public partial class SalesInvoiceItem : BaseEntity
    {
        public int InvoiceItemCode { get; set; }
        public int InvoiceNo { get; set; }
        public int ItemCode { get; set; }
        public decimal IssuedQuantity { get; set; }
        public decimal ReturnedQuantity { get; set; }
        public decimal BlockedQuantity { get; set; }
        public decimal Rate { get; set; }
        public DateTime? WarrantyExpiryDate { get; set; }
        public DateTime? ExtendedWarrantyExpiryDate { get; set; }
        public int ProductSubGroupCode { get; set; }
        public decimal PERate { get; set; }
        public string PackageDescription { get; set; }
    }
}
