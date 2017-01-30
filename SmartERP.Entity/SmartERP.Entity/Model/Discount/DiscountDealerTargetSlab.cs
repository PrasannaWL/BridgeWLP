using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.Discount
{   
    public partial class DiscountDealerTargetSlab: BaseEntity
    {
        public int TargetGroupCode { get; set; }
        public int ProductClassificationCode { get; set; }
        public int ExecutionOrder { get; set; }
        public decimal AchievementPercentageFrom { get; set; }
        public decimal AchievementPercentageTo { get; set; }
        public decimal DiscountPercentage { get; set; }
    }
}
