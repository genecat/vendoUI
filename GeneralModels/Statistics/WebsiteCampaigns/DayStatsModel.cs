using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Statistics.WebsiteCampaigns
{
   public  class DayStatsModel
    {
        public DateTime for_day { get; set; }
        public int n_clicks { get; set; }
        public double ecpc { get; set; }
    }
}
