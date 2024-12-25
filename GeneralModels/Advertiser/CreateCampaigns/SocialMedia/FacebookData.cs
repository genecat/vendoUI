using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.SocialMedia
{
   public class FacebookData
    {
        public string id { get; set; }
        public string facebook_id { get; set; }
        public string email { get; set; }
        public string name { get; set; }
        public int follower_count { get; set; }
        public string access_token { get; set; }
        public string image { get; set; }
        public string page_id { get; set; }
        public string page_name { get; set; }
        public int page_follower_count { get; set; }
        //"default": true,
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
