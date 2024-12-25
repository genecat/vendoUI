using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Influencer.AccountSetUp
{
    public class AccountLinkedinModel
    {
        public string id { get; set; }
        public string linkedin_id { get; set; }
        public string email { get; set; }
        public string name { get; set; }
        public uint follower_count { get; set; }
        public string access_token { get; set; }
        public string url { get; set; }
        public string image { get; set; }
    }
}
