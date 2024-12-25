using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.Management
{
   public class CampaignModel
    {
        public string website_ids { get;  set; }
        public DateTime dateend { get;  set; }
        public string description { get;  set; }
        public int budget { get;  set; }
        public int originalbudget { get; set; }
        public int dailybudget { get;  set; }
        public int currentdailybudget { get; set; }
        public int status { get; set; }
        public string title { get;  set; }
        public string targeturl { get;   set; }
    }
}
