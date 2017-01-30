using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.Discount
{  
    public partial class DiscountSchemePercentage_DataModel: BaseEntity
    {
        public int DiscountSchemeCode { get; set; }
        public int DataModel_KeyCode { get; set; }
        public decimal DiscountPercentage { get; set; }
    }
}
