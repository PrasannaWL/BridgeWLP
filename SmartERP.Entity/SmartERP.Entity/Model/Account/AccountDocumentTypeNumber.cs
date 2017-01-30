using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{ 
    public partial class AccountDocumentTypeNumber: BaseEntity
    {
        public int BranchCode { get; set; }
        public int DocumentTypeCode { get; set; }
        public int PeriodCode { get; set; }
        public int StartingNo { get; set; }
        public int LastNumber { get; set; }
    }
}
