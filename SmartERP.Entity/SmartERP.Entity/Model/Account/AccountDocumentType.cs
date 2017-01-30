using System;
using SmartERP.Entity.Model.Base;

namespace SmartERP.Entity.Model
{     
    public partial class AccountDocumentType: BaseEntity
    {
        public string DocumentTypeName { get; set; }
        public string TransactionCode { get; set; }
        public string AllowPreviousFYEntry { get; set; }  
    }
}
