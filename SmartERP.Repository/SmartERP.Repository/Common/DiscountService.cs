using SmartERP.Entity.Model;
using SmartERP.Repository.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartERP.Repository.Common
{
    public class DiscountService
    {
        public DiscountsRepository DiscountsRepo { get; set; }
        public DiscountDealerTargetGroupRepository DiscountDealerTargetGroupRepo { get; set; }
        public DiscountDealerTargetSlabRepository DiscountDealerTargetSlabRepo { get; set; }
        public DiscountFilterMasterRepository DiscountFilterMasterRepo { get; set; }
        public DiscountSchemeFilterHeaderRepository DiscountSchemeFilterHeaderRepo { get; set; }
        public DiscountSchemeFilterValueRepository DiscountSchemeFilterValueRepo { get; set; }
        public DiscountSchemePercentage_DataModelRepository DiscountSchemePercentage_DataModelRepo { get; set; }
        public DiscountSchemePercentage_DirectRepository DiscountSchemePercentage_DirectRepo { get; set; }
        public DiscountSchemePercentage_SlabModelRepository DiscountSchemePercentage_SlabModelRepo { get; set; }
        public DiscountSchemeRepository DiscountSchemeRepo { get; set; }



        public DiscountService()
        {
            CreateOrExtends();
        }
        public void CreateOrExtends()
        {
            this.DiscountDealerTargetGroupRepo = this.DiscountDealerTargetGroupRepo ?? new DiscountDealerTargetGroupRepository();
            this.DiscountDealerTargetSlabRepo = this.DiscountDealerTargetSlabRepo ?? new DiscountDealerTargetSlabRepository();
            this.DiscountFilterMasterRepo = this.DiscountFilterMasterRepo ?? new DiscountFilterMasterRepository();
            this.DiscountsRepo = this.DiscountsRepo ?? new DiscountsRepository();
            this.DiscountSchemeFilterHeaderRepo = this.DiscountSchemeFilterHeaderRepo ?? new DiscountSchemeFilterHeaderRepository();
            this.DiscountSchemeFilterValueRepo = this.DiscountSchemeFilterValueRepo ?? new DiscountSchemeFilterValueRepository();
            this.DiscountSchemePercentage_DataModelRepo = this.DiscountSchemePercentage_DataModelRepo ?? new DiscountSchemePercentage_DataModelRepository();
            this.DiscountSchemePercentage_DirectRepo = this.DiscountSchemePercentage_DirectRepo ?? new DiscountSchemePercentage_DirectRepository();
            this.DiscountSchemePercentage_SlabModelRepo = this.DiscountSchemePercentage_SlabModelRepo ?? new DiscountSchemePercentage_SlabModelRepository();
            this.DiscountSchemeRepo = this.DiscountSchemeRepo ?? new DiscountSchemeRepository();

        }
        //make you logic ... and carry on... and avoid multiple instance of repostory in controller...
        public string Validation()
        {

            return string.Empty;
        }


    }

}




