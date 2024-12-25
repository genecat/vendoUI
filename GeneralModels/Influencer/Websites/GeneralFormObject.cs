using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Influencer.Websites
{
    public class GeneralFormObject
    {
        public string logoid { get; set; }
        public int cat { get; set; }

        public string desc { get; set; }
        public string wurl { get; set; }
        public string sturl { get; set; } = "";

        public int avgusers { get; set; }
        public int avgvisitors { get; set; }
        public int status { get; set; }
        public int verificationtype { get; set; }

    }
}
