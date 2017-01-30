using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{ 
    public partial class SalePickListHeader: BaseEntity
    {
        public int PickListHeaderCode { get; set; }
        public string Type { get; set; }
        public int OrderNo { get; set; }
        public int StockTransferCode { get; set; }
        public string BarCodeEnabled { get; set; }
        public int Transportcode { get; set; }
        public string BookingPlace { get; set; }
        public string InvoiceStatus { get; set; }
    }
}
