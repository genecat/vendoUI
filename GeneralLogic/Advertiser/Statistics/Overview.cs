using System;
using System.Collections.Generic;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Components;

namespace GeneralLogic.Advertiser.Statistics
{
    public class Overview
    {
        public async Task<double> GetGeneralStats(DateTime datefrom, DateTime dateto)
        {
            string paramsUri = string.Format("?datefrom={0}&dateto={1}", datefrom, dateto);
            return await GeneralObjects.httpClient_api.GetFromJsonAsync<double>("advertiser/overview/getgeneralstats" + paramsUri);
        }
        public async Task<double> GetTotalClicksDaily(DateTime datefrom, DateTime dateto)
        {
            string paramsUri = string.Format("?datefrom={0}&dateto={1}", datefrom, dateto);
            return await GeneralObjects.httpClient_api.GetFromJsonAsync<double>("advertiser/overview/totalclicksdaily" + paramsUri);
        }
        public async Task<double> GetTotalViewsDaily(DateTime datefrom, DateTime dateto)
        {
            string paramsUri = string.Format("?datefrom={0}&dateto={1}", datefrom, dateto);
            return await GeneralObjects.httpClient_api.GetFromJsonAsync<double>("advertiser/overview/totalviewsdaily" + paramsUri);
        }
    }
}
