﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.User
{
    public class UsageTracking: BaseEntity
    {
        public string SessionId { get; set; }
        public string Menu { get; set; }
    }
}
