using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CashAccount
{
    public class RefundModel
    {
        public string id { get; set; }
        public int currentstatus { get; set; }
        public DateTime transactiondate { get; set; }
        public int value { get; set; }
    }
}
