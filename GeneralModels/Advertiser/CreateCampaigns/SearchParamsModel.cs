using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns
{
    public class SearchParamsModel
    {
        public int fromvisitors { get; set; } = 0;
        public int tovisitors { get; set; } = 0;
        public int fromusers { get; set; } = 0;
        public int tousers { get; set; } = 0;
        public int fromctr { get; set; } = 0;
        public int toctr { get; set; } = 0;
        public int cat { get; set; } = 0;
    }
}
