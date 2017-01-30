using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartERP.Entity.Model.Common
{
    public class Allocation
    {
        public string DealerName { get; set; }
        public int OrderNo { get; set; }
        public string ItemCode { get; set; }
        public string ItemName { get; set; }
        public string PSG { get; set; }
        public decimal? OrderedQty { get; set; }
        public decimal? AlottedQty { get; set; }
        public decimal? MPOAdvance { get; set; }
        public string BarCodeApplicable { get; set; }
        public string IsPackedItem { get; set; }


    }
}
