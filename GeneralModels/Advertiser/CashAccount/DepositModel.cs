using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CashAccount
{
    public class DepositModel
    {
        public string id { get; set; }
        public string accountid { get; set; }
        public int currentstatus { get; set; }
        public DateTime transactiondate { get; set; }
        public int provider { get; set; }
        public int value { get; set; }
        public string provider_tid { get; set; }
    }
}
