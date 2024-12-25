using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;

namespace GeneralLogic
{
  public  class GeneralObjects
    {


#if DEBUG
        public static HttpClient httpClient_api = new HttpClient() { BaseAddress = new System.Uri("http://localhost:53355") };
#endif

#if !DEBUG
        public static HttpClient httpClient_api = new HttpClient() { BaseAddress = new System.Uri("https://api.vendomedia.net" /*"http://localhost:53355"*/) };
#endif

        public class websitecampaigncreate
        {
            public static Dictionary<string, string> currentwebsites;
        }

      

        public class messagecenterdata
        {
            public static List<GeneralModels.MessageCenter.MessageModel> Messages;
            public static DateTime lastfetch;
        }
    }
}
