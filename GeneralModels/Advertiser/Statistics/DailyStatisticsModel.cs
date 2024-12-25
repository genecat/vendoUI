using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.Statistics
{
    public class DailyStatisticsModel
    {
        public DateTime RecordForDay { get; set; }
        public int Value { get; set; }

        public float CPC { get; set; }
    }
}
