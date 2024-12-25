using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace GeneralLogic.Statistics.WebsiteCampaigns
{
    public class Totals
    {

        public static async Task<int> GetTotalClicksForCampaign(string cid, DateTime datefrom, DateTime dateto)
        {
            return await HttpRequestWrappers.MainApiGetRequest<int>("?cid="+cid+"&datefrom="+datefrom.ToString()+"&dateto="+dateto);
        }

        public static async Task<int> GetTotalViewsForCampaign(string cid, DateTime datefrom, DateTime dateto)
        {
            return await HttpRequestWrappers.MainApiGetRequest<int>("?cid=" + cid + "&datefrom=" + datefrom.ToString() + "&dateto=" + dateto);
        }

        public static async Task<int> GetTotalClicksForWebsite(string wid, DateTime datefrom, DateTime dateto)
        {
            return await HttpRequestWrappers.MainApiGetRequest<int>("?wid=" + wid + "&datefrom=" + datefrom.ToString() + "&dateto=" + dateto);
        }

        public static async Task<int> GetTotalViewsForWebsite(string wid, DateTime datefrom, DateTime dateto)
        {
            return await HttpRequestWrappers.MainApiGetRequest<int>("?wid=" + wid + "&datefrom=" + datefrom.ToString() + "&dateto=" + dateto);
        }



        public static async Task<List<GeneralModels.Statistics.WebsiteCampaigns.DayStatsModel>> GetDaysData_ClicksForCampaign(string cid, DateTime datefrom, DateTime dateto)
        {
            return await HttpRequestWrappers.MainApiGetRequest<List<GeneralModels.Statistics.WebsiteCampaigns.DayStatsModel>>("?cid=" + cid + "&datefrom=" + datefrom.ToString() + "&dateto=" + dateto);
        }

        public static async Task<List<GeneralModels.Statistics.WebsiteCampaigns.DayStatsModel>> GetDaysData_ViewsForCampaign(string cid, DateTime datefrom, DateTime dateto)
        {
            return await HttpRequestWrappers.MainApiGetRequest<List<GeneralModels.Statistics.WebsiteCampaigns.DayStatsModel>>("?cid=" + cid + "&datefrom=" + datefrom.ToString() + "&dateto=" + dateto);
        }

        public static async Task<List<GeneralModels.Statistics.WebsiteCampaigns.DayStatsModel>> GetDaysData_ClicksForWebsite(string wid, DateTime datefrom, DateTime dateto)
        {
            return await HttpRequestWrappers.MainApiGetRequest<List<GeneralModels.Statistics.WebsiteCampaigns.DayStatsModel>>("?wid=" + wid + "&datefrom=" + datefrom.ToString() + "&dateto=" + dateto);
        }

        public static async Task<List<GeneralModels.Statistics.WebsiteCampaigns.DayStatsModel>> GetDaysData_ViewsForWebsite(string wid, DateTime datefrom, DateTime dateto)
        {
            return await HttpRequestWrappers.MainApiGetRequest<List<GeneralModels.Statistics.WebsiteCampaigns.DayStatsModel>>("?wid=" + wid + "&datefrom=" + datefrom.ToString() + "&dateto=" + dateto);
        }
    }
}
