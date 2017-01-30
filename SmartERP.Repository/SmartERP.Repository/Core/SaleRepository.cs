using Dapper;
using SmartERP.Entity.Model;
using SmartERP.Entity.Model.Common;
using SmartERP.Entity.Model.Configuration;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;

namespace SmartERP.Repository.Core
{
    public class SaleRepository 
    {
        public List<Allocation> GetAllocation()
        {
            using (SqlConnection cn = ConnectionMangement.GetOpenConnection())
            {
                List<Allocation> allocationList = cn.Query<Allocation>("SP_GetAllocation", null, commandType: System.Data.CommandType.StoredProcedure).ToList();
                ConnectionMangement.CloseConnection(cn);
                return allocationList;
            }
        }

    }

    public class SalePickListHeaderRepository : GenericRepository<SalePickListHeader>
    {
        public SalePickListHeaderRepository(string table) : base(table)
        {
        }
        public SalePickListHeaderRepository() : base()
        {
        }
        
    }

    public class SalePickListDetailRepository : GenericRepository<SalePickListDetail>
    {
        public SalePickListDetailRepository(string table) : base(table)
        {
        }
        public SalePickListDetailRepository() : base()
        {
        }

        
    }
}
