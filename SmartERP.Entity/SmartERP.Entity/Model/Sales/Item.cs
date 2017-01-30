using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{
    public partial class Item : BaseEntity
    {
        public string ItemSalecode { get; set; }
        public string ItemName { get; set; }
        public int ProductClassificationCode { get; set; }
        public int ItemHeading_LookupKeyCode { get; set; }
        public decimal MfgListPrice { get; set; }
        public string IPPriceProcesspending { get; set; }
        public string UOM { get; set; }
        public int ItemSource_LookupKeyCode { get; set; }
        public int ItemType_LookpKeyCode { get; set; }
        public string Serviceable { get; set; }
        public string SerialNumberItem { get; set; }
        public short DependentItemCount { get; set; }
        public short ItemClassificationCode { get; set; }
        public string BarCodeApplicable { get; set; }
        public string TariffNo { get; set; }
        public string CharityApplicable { get; set; }
        public int QtyInPacket { get; set; }
        public int WarrantyType_LookupKeyCode { get; set; }
    }
}
