using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using GeneralModels.Advertiser.CreateCampaigns;
using GeneralModels.Advertiser.CreateCampaigns.Websites;
using GeneralModels.Advertiser.Statistics;
using Microsoft.AspNetCore.Components;

namespace GeneralLogic.Advertiser.Statistics
{
    public class WebsiteStatistics
    {
        public static async Task<Dictionary<string, string>> GetAllCampaigns()
        {
            return await HttpRequestWrappers.MainApiGetRequest<Dictionary<string, string>>("advertiser/websitemanager/getallcampaigns");
        }
        public static async Task<Dictionary<string, string>> GetAllWebsitesByCampaign(string cmp)
        {
            string paramsUri = string.Format("?cmp={0}", cmp);
            return await HttpRequestWrappers.MainApiGetRequest<Dictionary<string, string>>("advertiser/websitemanager/getwebsitesbycampaign" + paramsUri);
        }
        public static async Task<List<WebsiteModel>> GetWebsiteDetails(string wid)
        {
            string paramsUri = string.Format("?wid={0}", wid);
            return await HttpRequestWrappers.MainApiGetRequest<List<WebsiteModel>>("advertiser/websitemanager/getwebsitedetails" + paramsUri);
        }
        public static async Task<GeneralModels.Advertiser.Management.CampaignModel> GetCampaignDetails(string cmp)
        {
            string paramsUri = string.Format("?cmp={0}", cmp);
            return await HttpRequestWrappers.MainApiGetRequest<GeneralModels.Advertiser.Management.CampaignModel>("advertiser/websitemanager/getcampaigndetails" + paramsUri);
        }
        public static async Task<List<CampaignModel>> WebsiteCampaignListItems()
        {
            return await HttpRequestWrappers.MainApiGetRequest<List<CampaignModel>>("advertiser/overview/websitecampaignlistitems");
        }

        public static async Task<List<DailyStatisticsModel>> GetTotalClicksDaily(DateTime datefrom, DateTime dateto)
        {
            string paramsUri = string.Format("?datefrom={0}&dateto={1}", datefrom, dateto);
            return await HttpRequestWrappers.MainApiGetRequest<List<DailyStatisticsModel>>("advertiser/statistics/websitecampaigns/totaldailyclicks" + paramsUri);
        }

        public static async Task<List<DailyStatisticsModel>> GetTotalViewsDaily(DateTime datefrom, DateTime dateto)
        {
            string paramsUri = string.Format("?datefrom={0}&dateto={1}", datefrom, dateto);
            return await HttpRequestWrappers.MainApiGetRequest<List<DailyStatisticsModel>>("advertiser/statistics/websitecampaigns/totaldailyviews" + paramsUri);
        }

        public static async Task<List<DailyStatisticsModel>> GetWebsiteTotalClicksDaily(DateTime datefrom, DateTime dateto)
        {
            string paramsUri = string.Format("?datefrom={0}&dateto={1}", datefrom, dateto);
            return await HttpRequestWrappers.MainApiGetRequest<List<DailyStatisticsModel>>("advertiser/statistics/websitecampaigns/websitetotaldailyclicks" + paramsUri);
        }

        public static async Task<List<DailyStatisticsModel>> GetWebsiteTotalViewsDaily(DateTime datefrom, DateTime dateto)
        {
            string paramsUri = string.Format("?datefrom={0}&dateto={1}", datefrom, dateto);
            return await HttpRequestWrappers.MainApiGetRequest<List<DailyStatisticsModel>>("advertiser/statistics/websitecampaigns/websitetotaldailyviews" + paramsUri);
        }
    }
}
