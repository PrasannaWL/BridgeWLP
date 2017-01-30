using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.Discount
{  
    public partial class DiscountSchemeFilterHeader: BaseEntity
    {
        public int DiscountSchemeCode { get; set; }
        public int FilterTableCode { get; set; }
        public int FilterOrder { get; set; }
    }
}
