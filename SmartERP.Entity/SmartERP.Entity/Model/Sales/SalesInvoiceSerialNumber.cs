using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{
    public partial class SalesInvoiceSerialNumber : BaseEntity
    {
        public int InvoiceNo { get; set; }
        public int ItemCode { get; set; }
        public string SerialNumber { get; set; }
        public string IsReturned { get; set; }
        public string IsReserved { get; set; }
    }
}
