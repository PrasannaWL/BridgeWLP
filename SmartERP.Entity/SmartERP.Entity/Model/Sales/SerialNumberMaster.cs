using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{   
    public partial class SerialNumberMaster :BaseEntity
    {
        public int ItemCode { get; set; }
        public string SerialNumber { get; set; }
        public string Type { get; set; }
        public int SequenceNo { get; set; }
        public int NoOfPack { get; set; }
        public decimal? ExciseDuty { get; set; }
        public decimal? Cess { get; set; }
        public decimal? EDCess { get; set; }
        public decimal? TariffNo { get; set; }
        public decimal? GROSS_WT { get; set; }
        public decimal? NETT_WT { get; set; }
    }
}
