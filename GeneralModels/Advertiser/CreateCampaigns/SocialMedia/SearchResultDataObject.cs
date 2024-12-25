using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.SocialMedia
{
    public class SearchResultDataObject
    {
        public string id { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string image { get; set; }
        public PaymentData payment { get; set; }
        public AudienceData audience { get; set; }
        public FacebookData facebook { get; set; }
        public TwitterData twitter { get; set; }
        public LinkedInData linkedin { get; set; }
        public ScoreData score { get; set; }
    }
}
