using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{
    public partial class AccountLedgerSummary: BaseEntity
    {
        public int BranchCode { get; set; }
        public int LedgerCode { get; set; }
        public decimal CurrentBalance { get; set; }
        public string CurrentbalanceNature { get; set; }
        public decimal CurrentAdvanceBalance { get; set; }
        public decimal CurrentMPOAdvance { get; set; }
    }
}
