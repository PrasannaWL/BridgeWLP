using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{
    public partial class SerialNumberTransaction : BaseEntity
    {
        public int ItemCode { get; set; }
        public string SerialNumber { get; set; }
        public int? DocumentTypeCode { get; set; }
        public int? DocumentNumber { get; set; }
        public DateTime? DocumentDate { get; set; }
        public int BranchCode { get; set; }
        public decimal? Rate { get; set; }
        public string StatusOfGoods { get; set; }
        public string Salable { get; set; }
        public string IsReserved { get; set; }
        public bool CurrentRecord { get; set; }
    }
}
