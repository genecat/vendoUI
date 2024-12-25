using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.SocialMedia
{
   public class AudienceData
    {
        public string id { get; set; }
        public List<string> categories { get; set; }
        public string location { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
