using SmartERP.Entity.Model.Configuration;
using SmartERP.Entity.Model.Discount;

namespace SmartERP.Repository.Core
{
    public class DiscountsRepository : GenericRepository<Discounts>
    {
        public DiscountsRepository(string table) : base(table)
        {
        }
        public DiscountsRepository() : base()
        {
        }
    }
}
