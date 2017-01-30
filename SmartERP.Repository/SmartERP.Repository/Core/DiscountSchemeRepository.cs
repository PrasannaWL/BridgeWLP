using SmartERP.Entity.Model.Configuration;
using SmartERP.Entity.Model.Discount;

namespace SmartERP.Repository.Core
{
    public class DiscountSchemeRepository : GenericRepository<DiscountScheme>
    {
        public DiscountSchemeRepository(string table) : base(table)
        {
        }
        public DiscountSchemeRepository() : base()
        {
        }
    }
}
