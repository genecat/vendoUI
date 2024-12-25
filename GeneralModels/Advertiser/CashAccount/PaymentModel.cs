using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CashAccount
{
    public class PaymentModel
    {
        public string id { get; set; }
        public int value { get; set; }
        public DateTime datecreated { get; set; }
        public int type { get; set; }
        public string accountid { get; set; }
        public string campaignid { get; set; }
        public int status { get; set; }
        public string orderid { get; set; }
    }
}
