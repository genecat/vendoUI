using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.SocialMedia
{
  public  class LinkedInData
    {
        public string id { get; set; }
        public string linkedin_id { get; set; }
        public string email { get; set; }
        public string name { get; set; }
        public string access_token { get; set; }
        public string image { get; set; }
        // "default": true,
        public string created_at { get; set; }
        public string updated_at { get; set; }
    }
}
