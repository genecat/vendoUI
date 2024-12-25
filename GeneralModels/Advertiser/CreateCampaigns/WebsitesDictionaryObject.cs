using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns
{
    public class WebsitesDictionaryObject
    {
        public Dictionary<string, string> dic { get; private set; }
        public string cmp { get; private set; }

        public WebsitesDictionaryObject(Dictionary<string, string> selectedSites, string cid)
        {
            this.dic = selectedSites;
            this.cmp = cid;
        }
    }
}
