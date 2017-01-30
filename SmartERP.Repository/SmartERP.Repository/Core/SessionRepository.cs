using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using SmartERP.Entity;
using SmartERP.Entity.Interface;
using Dapper;
using SmartERP.Entity.Model.User;
using SmartERP.Entity.Interface.User;
using System.Data;

namespace SmartERP.Repository.Core
{
    public class SessionRepository : GenericRepository<Session> 
    {
        public SessionRepository(string table) : base(table)
        {
        }

        public SessionRepository() : base()
        {
        }

       
    }
}


