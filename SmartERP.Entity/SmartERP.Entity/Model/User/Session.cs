using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.User
{
    public class Session:BaseEntity
    {
        public string SessionID { get; set; }
        public DateTime LoginTime { get; set; }
        public int UserCode { get; set; }
        public int RoleCode { get; set; }
        public DateTime LastAccessedTime { get; set; }
        public string Ipaddress { get; set; }
        public string Deviceinfo { get; set; }
     
    }
}
