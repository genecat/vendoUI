using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Influencer.Payouts
{
   public class CreateTaxDataModel
    {
        public bool is_uscitizen { get; set; }
        public string socialsecurityid { get; set; }
        public string beneficiary { get; set; }
        public string country { get; set; }
        public string c_state { get; set; }
        public string address { get; set; }
    }
}
