using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Influencer.AccountSetUp
{
    public class AccountTwitterModel
    {
        public string id { get; set; }
        public string twitter_id { get; set; }
        public string email { get; set; }
        public string name { get; set; }
        public string username { get; set; }
        public uint follower_count { get; set; }
        public string access_token { get; set; }
        public string url { get; set; }
        public string image { get; set; }
    }
}
