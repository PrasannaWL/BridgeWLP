using SmartERP.Entity.Model.Configuration;
using SmartERP.Entity.Model.Discount;

namespace SmartERP.Repository.Core
{
    public class DiscountDealerTargetGroupRepository : GenericRepository<DiscountDealerTargetGroup>
    {
        public DiscountDealerTargetGroupRepository(string table) : base(table)
        {
        }
        public DiscountDealerTargetGroupRepository() : base()
        {
        }
    }
}
