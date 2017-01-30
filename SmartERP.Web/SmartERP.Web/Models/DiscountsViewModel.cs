using System.Collections.Generic;
using System.Web.Mvc;
using SmartERP.Entity.Model.Discount;

namespace SmartERP.Web.Models
{
    public class DiscountsViewModel: Discounts
    {
        public DiscountsViewModel()
        {
        }
        public IEnumerable<SelectListItem> DiscountTypes { get; set; }
    }

    public class DiscountSchemesViewModel : DiscountScheme
    {
        public DiscountSchemesViewModel()
        {
        }
        public DiscountSchemesViewModel(DiscountScheme discountSchemeModel)
        {
            DiscountScheme = discountSchemeModel;
        }
        public DiscountSchemesViewModel(DiscountScheme[] discountSchemesModel)
        {
            DiscountSchemes = discountSchemesModel;
        }
        public IEnumerable<SelectListItem> DiscountTypes { get; set; }

        public string DiscountType { get; set; }

        public DiscountScheme DiscountScheme { get; set; }

        public DiscountScheme[] DiscountSchemes { get; set; }
    }
}