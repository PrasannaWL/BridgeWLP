using SmartERP.Entity.Model.Configuration;
using SmartERP.Entity.Model.Discount;

namespace SmartERP.Repository.Core
{
    public class DiscountSchemeFilterValueRepository : GenericRepository<DiscountSchemeFilterValue>
    {
        public DiscountSchemeFilterValueRepository(string table) : base(table)
        {
        }
        public DiscountSchemeFilterValueRepository() : base()
        {
        }
    }
}
