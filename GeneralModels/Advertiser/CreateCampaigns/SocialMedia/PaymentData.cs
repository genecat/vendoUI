using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.SocialMedia
{
    public class PaymentData
    {
        public string id { get; set; }
        public string paypal_email { get; set; }
        public int post_fee { get; set; }
        public string post_note { get; set; }
        public bool is_american_citizen { get; set; }
        public string created_at { get; set; }
        public string updated_at { get; set; }
    }
}
