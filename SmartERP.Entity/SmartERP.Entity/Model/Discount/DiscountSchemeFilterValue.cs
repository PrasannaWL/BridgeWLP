using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.Discount
{   
    public partial class DiscountSchemeFilterValue: BaseEntity
    {
        public int FilterTableCode { get; set; }
        public int FilterValue { get; set; }
    }
}
