using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.Discount
{  
    public partial class DiscountFilterMaster:BaseEntity
    {
        public string FilterTableName { get; set; }
        public string QueryObjName { get; set; }
        public string QueryObjType { get; set; }
    }
}
