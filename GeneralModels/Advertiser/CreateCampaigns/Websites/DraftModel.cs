using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.Websites
{
    public class DraftModel
    {
        public string id { get; set; }
        public int cpc { get; set; } = 0;
        public string listingid { get; set; }
        public int budget { get; set; } = 0;
        public Containers.DraftContainerObject containers { get; set; } = new Containers.DraftContainerObject();
    }
}
