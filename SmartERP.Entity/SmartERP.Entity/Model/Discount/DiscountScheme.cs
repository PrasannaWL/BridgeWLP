using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.Discount
{   
    public partial class DiscountScheme: BaseEntity
    {
        public int DisountCode { get; set; }
        public string SchemeDescription { get; set; }
        public string DiscountNarration { get; set; }
        public int LedgerCode { get; set; }
        public string Remarks { get; set; }
        public string SMSText { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public DateTime ActualEndDate { get; set; }
        public string SchemeStatus { get; set; }
        public int ClosedBy { get; set; }
        public DateTime ClosedOn { get; set; }
        public char PeriodTypeCode { get; set; }
        public string CumulativeDiscount { get; set; }
        public string AdvanceRequired { get; set; }
        public string DistountApply { get; set; }
        public int DiscountExecutionDays { get; set; }
        public string isconsideredforProfitEarning { get; set; }
    }
}
