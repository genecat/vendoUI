using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.Websites
{
   public class ListingModel
    {
        public int visitors { get;   set; }
        public int users { get;  set; }
        public double ctr { get;   set; }
        public string domain { get;   set; }

        public string logoid { get;   set; }
    }
}
