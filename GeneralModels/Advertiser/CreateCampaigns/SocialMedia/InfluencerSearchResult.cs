using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.SocialMedia
{
    public class InfluencerSearchResult
    {
        public List<SearchResultDataObject> Data { get; set; }

        public int result_count { get; set; }

        public int total_count { get; set; }
    }
}
