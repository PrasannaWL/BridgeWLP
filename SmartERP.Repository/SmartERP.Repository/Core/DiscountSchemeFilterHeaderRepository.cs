using SmartERP.Entity.Model.Configuration;
using SmartERP.Entity.Model.Discount;

namespace SmartERP.Repository.Core
{
    public class DiscountSchemeFilterHeaderRepository : GenericRepository<DiscountSchemeFilterHeader>
    {
        public DiscountSchemeFilterHeaderRepository(string table) : base(table)
        {
        }
        public DiscountSchemeFilterHeaderRepository() : base()
        {
        }
    }
}
