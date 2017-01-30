using SmartERP.Entity.Model.Configuration;
using SmartERP.Entity.Model.Discount;

namespace SmartERP.Repository.Core
{
    public class DiscountSchemePercentage_DirectRepository : GenericRepository<DiscountSchemePercentage_Direct>
    {
        public DiscountSchemePercentage_DirectRepository(string table) : base(table)
        {
        }
        public DiscountSchemePercentage_DirectRepository() : base()
        {
        }
    }
}
