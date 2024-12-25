using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.SocialMedia
{
   public class TwitterData
    {
        public string id { get; set; }
        public string twitter_id { get; set; }
        public string email { get; set; }
        public string username { get; set; }
        public string name { get; set; }
        public string url { get; set; }
        public string image { get; set; }
        public int follower_count { get; set; }
        public string access_token { get; set; }
        public string access_secret { get; set; }
        //public string default { get; set; }
        public string created_at { get; set; }
        public string updated_at { get; set; }
    }
}
