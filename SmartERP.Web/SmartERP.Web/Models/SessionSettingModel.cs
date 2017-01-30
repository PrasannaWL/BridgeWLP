using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartERP.Web.Models
{
    public class SessionSettingModel
    {
            public string SessionId { get; set; }

            public UsersViewModel Settings { get; set; }
        
    }

    public class ReportModel
    {
        public IDictionary<string,string> Parameters { get; set; }

        public IEnumerable<dynamic> Results { get; set; }

    }
}