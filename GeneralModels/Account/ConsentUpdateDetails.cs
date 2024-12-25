using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Account
{
    public class ConsentUpdateDetails
    {
        public bool consent_email { get; set; }
        public bool consent_sms { get; set; }
        public bool consent_call { get; set; }
    }
}
