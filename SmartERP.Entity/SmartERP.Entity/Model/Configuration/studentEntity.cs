using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model.Configuration
{
    public class studentEntity : BaseEntity
    {
        public string StudentName { get; set; }
        public string StudentAddress { get; set; }
        public string StudentGrade { get; set; }
    }
}
