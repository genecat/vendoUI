using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.Containers
{
    public class DraftContainerObject
    {
        public container c1 { get; set; } = new container() { containertype = 1 };
        public container c2 { get; set; } = new container() { containertype = 2 };
        public container c3 { get; set; } = new container() { containertype = 3 };
        public container c4 { get; set; } = new container() { containertype = 4 };
        public container c5 { get; set; } = new container() { containertype = 5 };
        public container c6 { get; set; } = new container() { containertype = 6 };
    }
}
