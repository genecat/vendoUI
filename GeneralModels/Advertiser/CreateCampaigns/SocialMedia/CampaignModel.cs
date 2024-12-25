using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.SocialMedia
{
   public class CampaignModel
    {
        public string id { get; set; }
        public string type { get; set; }
        public string status { get; set; }
        public string url { get; set; }
        public string image { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public string note { get; set; }
        public double price { get; set; }
        public double max_click { get; set; }
        public double click_rate { get; set; }
        public string created_at { get; set; }
        public string updated_at { get; set; }

        public List<InfluencerForCampaignModel> influencers { get; set; }
    }
}
