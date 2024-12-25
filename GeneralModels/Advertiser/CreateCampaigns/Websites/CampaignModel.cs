using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.Websites
{
    public class CampaignModel
    {
        public string cmp { get; set; } = "";
        public string title { get; set; } = "";
        public string desc { get; set; } = " ";
        public double budget { get; set; }
        public double dailybudget { get; set; }
        public string targeturl { get; set; } = "";
        public string wids { get; set; } = "";
        public DateTime enddate { get; set; } = DateTime.UtcNow.AddDays(10);
    }
}
