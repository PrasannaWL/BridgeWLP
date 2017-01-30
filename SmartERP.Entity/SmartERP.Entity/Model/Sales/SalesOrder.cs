using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{
    public partial class SalesOrder: BaseEntity
    {
        public int OrderNo { get; set; }
        public int BranchCode { get; set; }
        public int DMSOrderNo { get; set; }
        public DateTime DMSOrderDate { get; set; }
        public int DealerCode { get; set; }
        public int TransportCode { get; set; }
        public string BookingPlace { get; set; }
        public DateTime ExpiryDate { get; set; }
        public string ReconfirmationFlag { get; set; }
        public byte ReconfirmationCount { get; set; }
        public DateTime? LastReconfirmedDate { get; set; }
        public DateTime? CommittedDeliveryDate { get; set; }
        public string IsCancelled { get; set; }
        public int? CancelledBy { get; set; }
        public string CancellationRemarks { get; set; }
        public string IsOrderClosed { get; set; }
        public short OrderTypeCode { get; set; }
        public string IRFRaisedFlag { get; set; }
        public DateTime? IRFDate { get; set; }
        public string OrderSoruce { get; set; }
        public string PriorityType { get; set; }
        public decimal BillingValue { get; set; }
        public decimal? MPOAdvance { get; set; }
        public DateTime? LastMPOAdavnceDate { get; set; }
        public string MPADiscount { get; set; }
    }
}
