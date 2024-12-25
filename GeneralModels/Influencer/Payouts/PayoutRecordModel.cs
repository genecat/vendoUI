using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Influencer.Payouts
{
    public class PayoutRecordModel
    {
        public string id { get; set; }
        public int value { get; set; }
        public int status { get; set; }
        public DateTime datepaid { get; set; }
        public int payouttype { get; set; }
    }
}
