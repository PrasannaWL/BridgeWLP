using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{  
    public partial class SalesInvoice: BaseEntity
    {
        public int InvoiceNo { get; set; }
        public int BranchCode { get; set; }
        public int DocumentTypeCode { get; set; }
        public int DocumentNumber { get; set; }
        public DateTime DocumentDate { get; set; }
        public int orderno { get; set; }
        public DateTime orderdate { get; set; }
        public int DealerCode { get; set; }
        public int TaxSubTypeCode { get; set; }
        public string IsThroughAdvance { get; set; }
        public int TransportCode { get; set; }
        public int DestinationAddressCode { get; set; }
        public string LRRRNumber { get; set; }
        public DateTime? LRRRDate { get; set; }
        public int PackageCount { get; set; }
        public string VehicleNumber { get; set; }
        public int FormType { get; set; }
        public string FormNumber { get; set; }
        public DateTime? FormDate { get; set; }
        public decimal TotalValue { get; set; }
        public int GCD { get; set; }
        public int ICD { get; set; }
        public int BCD { get; set; }
        public byte PrintCount { get; set; }
        public string IsCancelled { get; set; }
        public int CancelledUser { get; set; }
        public DateTime? CancelledDate { get; set; }
        public string CancellationRemarks { get; set; }
        public string IsFullyReturned { get; set; }
        public int ProductTotal { get; set; }
        public DateTime? SettledDate { get; set; }
        public int BusinessCenterCode { get; set; }
        public int RepresentativeCode { get; set; }
        public string AdditionalPrintApprovalStatus { get; set; }
        public int AdditionalPrintApprovedby { get; set; }
        public int DeviatedTransportCode { get; set; }
    }
}
