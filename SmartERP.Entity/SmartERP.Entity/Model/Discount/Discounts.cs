using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.Discount
{
    public partial class Discounts: BaseEntity
    {
        public string DiscountName { get; set; }
        public int DiscountPriority { get; set; }
        public string ConsiderProfitEarning { get; set; }
        public int DefaultLedgerCode { get; set; }
        public string SchemeType { get; set; }
        public short DiscountPercentageModel { get; set; }
        public short SlabModelExecutionCode { get; set; }
        public short SingleDataModelExecutionCode { get; set; }
        public string DiscountApplyOn { get; set; }
        public string ConsiderQtyValueFrom { get; set; }
    }
}
