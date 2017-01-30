using SmartERP.Entity.Model.Configuration;
using SmartERP.Entity.Model.Discount;

namespace SmartERP.Repository.Core
{
    public class DiscountSchemePercentage_DataModelRepository : GenericRepository<DiscountSchemePercentage_DataModel>
    {
        public DiscountSchemePercentage_DataModelRepository(string table) : base(table)
        {
        }
        public DiscountSchemePercentage_DataModelRepository() : base()
        {
        }
    }
}
