using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{   
    public partial class Dealer: BaseEntity
    {
        public int DealerCode { get; set; }
        public int LedgerCode { get; set; }
        public int BranchCode { get; set; }
        public int BusinessCenterCode { get; set; }
        public string PartyType { get; set; }
        public int DealerCategoryCode { get; set; }
        public int WofklowStatusCode { get; set; }
        public int DepositLegerCode { get; set; }
        public string DealerName { get; set; }
        public int AddressCode { get; set; }
        public string PropName { get; set; }
        public string EmailID { get; set; }
        public string VATNo { get; set; }
        public string CSTNo { get; set; }
        public DateTime CSTDate { get; set; }
        public string CentralExciseNo { get; set; }
        public DateTime CentralExciseDate { get; set; }
        public string TransportCodes { get; set; }
        public short TaxTypeCode { get; set; }
        public short TaxSubTypeCodes { get; set; }
        public string OnlinePaymentOnly { get; set; }
        public string ECMS_VirtualAccountNo { get; set; }
        public decimal MaxChequeValuePerDay { get; set; }
        public DateTime ManagerVistDate { get; set; }
        public string BankCodes { get; set; }
        public short DealerDiscountControls_ProductClassificationType { get; set; }
    }
}
