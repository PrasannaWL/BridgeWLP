using SmartERP.Entity.Model.Configuration;
using SmartERP.Entity.Model.Discount;

namespace SmartERP.Repository.Core
{
    public class DiscountSchemePercentage_SlabModelRepository : GenericRepository<DiscountSchemePercentage_SlabModel>
    {
        public DiscountSchemePercentage_SlabModelRepository(string table) : base(table)
        {
        }
        public DiscountSchemePercentage_SlabModelRepository() : base()
        {
        }
    }
}
