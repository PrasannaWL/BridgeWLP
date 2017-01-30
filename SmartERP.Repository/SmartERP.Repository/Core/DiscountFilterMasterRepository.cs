﻿using SmartERP.Entity.Model.Configuration;
using SmartERP.Entity.Model.Discount;

namespace SmartERP.Repository.Core
{
    public class DiscountFilterMasterRepository : GenericRepository<DiscountFilterMaster>
    {
        public DiscountFilterMasterRepository(string table) : base(table)
        {
        }
        public DiscountFilterMasterRepository() : base()
        {
        }
    }
}
