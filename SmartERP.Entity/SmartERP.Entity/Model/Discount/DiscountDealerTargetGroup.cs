using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.Discount
{  
    public partial class DiscountDealerTargetGroup: BaseEntity
    {
        public string TargetType { get; set; }
        public string TargetSubType { get; set; }
        public int PeriodCode { get; set; }
        public int BranchCode { get; set; }
        public int PeriodTypeCode { get; set; }
        public int ProductClassificationCode { get; set; }
    }
}
