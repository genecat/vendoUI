using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.Statistics.Overview
{
   public class CampaignListItemModel
    {
        /// <summary>
        /// 1 - websites
        /// 2 - ppc social media
        /// 3 - ppp social media
        /// </summary>
        public int campaigntype { get; set; } 
        public string title { get; set; }
        public string id { get; set; }
        public string budgetleft { get; set; }
        public DateTime startdate { get; set; }
        public DateTime enddate { get; set; }
        public int clicks { get; set; }
        public int impressions { get; set; }

        public int socialcampaignstatus { get; set; }
        public int websitecampaignstatus { get; set; }
    }
}
