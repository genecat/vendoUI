using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.Management
{
   public class CampaignWebsiteModel
    {
        public int category { get; set; }
        public int status { get; set; }
        public string containers { get;  set; }
        public string website { get; set; }

        public int originalbudget { get; set; }

        public int budget { get; set; }

        public int cpc { get; set; }
    }
}
