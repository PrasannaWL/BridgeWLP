using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.Discount
{  
    public partial class DiscountSchemePercentage_SlabModel:BaseEntity
    {
        public int DiscountSchemeCode { get; set; }
        public int GradeCode { get; set; }
        public int SlabNo { get; set; }
        public int StartValue { get; set; }
        public int EndValue { get; set; }
        public decimal DiscountPercentage { get; set; }
    }
}
