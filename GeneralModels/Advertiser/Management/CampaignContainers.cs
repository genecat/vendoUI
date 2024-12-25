using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.Management
{
     public class CampaignContainers
    {
        public string id { get; set; }
        public DateTime datecreated { get; set; }

        public string listingcontainer { get; set; }
        public string website { get; set; }

        public int containertype { get; set; }
        public string mediafileid { get; set; }
        public int status { get; set; }
    }
}
