﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.User
{
    public class RoleUser : BaseEntity
    {
        public int RoleCode { get; set; }
        public int UserCode { get; set; }
        public int BranchCode { get; set; }

    }
}
