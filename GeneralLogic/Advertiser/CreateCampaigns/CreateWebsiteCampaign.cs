using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Json;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using GeneralModels.Advertiser.CreateCampaigns;
using GeneralModels.Advertiser.CreateCampaigns.Containers;
using GeneralModels.Advertiser.CreateCampaigns.Websites;
using Microsoft.AspNetCore.Components;
using Newtonsoft.Json;
namespace GeneralLogic.Advertiser.CreateCampaigns
{
    public class CreateWebsiteCampaign
    {
        public static async Task<List<string>> StartSearchWebsites(GeneralModels.Advertiser.CreateCampaigns.Websites.SearchParamModel searchParams)
        {
            return await (await GeneralObjects.httpClient_api.PostAsJsonAsync("advertiser/websites/startsearch", searchParams)).Content.ReadFromJsonAsync<List<string>>();
        }

        public static async Task<List<int>> GetAvailableContainers(string wid)
        {
            return await HttpRequestWrappers.MainApiGetRequest<List<int>>("advertiser/websites/availablecontainersforwebsite?wid="+wid);
        }

        public static async Task<GeneralModels.Advertiser.CreateCampaigns.Websites.ListingModel> GetOneRecordForDisplay(string id)
        {
            string paramsUri = string.Format("?id={0}", id);
            return await GeneralObjects.httpClient_api.GetFromJsonAsync<ListingModel>("advertiser/websites/search/getonerecordfordisplay" + paramsUri);
        }

        public static async Task<string> InsertInitialCampaign()
        {
            return await GeneralObjects.httpClient_api.GetStringAsync("advertiser/websites/insertinitialcampaign");
        }

        public static async Task<Dictionary<string, string>> InsertInitialWebsites(Dictionary<string, string> dic, string cid)
        {
            WebsitesDictionaryObject args = new WebsitesDictionaryObject(dic, cid);
            return await (await GeneralObjects.httpClient_api.PostAsJsonAsync("advertiser/websites/insertinitialwebsites", args)).Content.ReadFromJsonAsync<Dictionary<string, string>>();
        }

        public static async Task<DraftModel> GetDraftWebsiteDetails(string wid)
        {
            string paramsUri = string.Format("?wid={0}", wid);
            return await HttpRequestWrappers.MainApiGetRequest<DraftModel>("advertiser/websites/getdraftwebsitedetails" + paramsUri);
        }

        public static async Task<List<int>> InsertCampaign(CampaignModel campaign)
        {
            return await HttpRequestWrappers.MainApiPostRequest<List<int>>("advertiser/websites/insertcampaign", campaign);
        }

        public static async Task<int> InsertWebsite(WebsiteModel website)
        {
            return await HttpRequestWrappers.MainApiPostRequest<int>("advertiser/websites/insertwebsite", website);
        }

        public static async Task<string> InsertContainer(container container)
        {
            var resp = await GeneralLogic.GeneralObjects.httpClient_api.PostAsync("advertiser/websites/insertcontainer", new StringContent(JsonConvert.SerializeObject(container),Encoding.UTF8, "application/JSON"));

            return resp.IsSuccessStatusCode ? await resp.Content.ReadAsStringAsync() : "";
        }
        public static async Task<string> DeleteContainer(string container, int type, string websiteid)
        {
            string paramsUri = string.Format("?container={0}&type{1}&websiteid={2}", container, type, websiteid);
            return await (await GeneralObjects.httpClient_api.DeleteAsync("advertiser/websites/deletecontainer" + paramsUri, CancellationToken.None)).Content.ReadAsStringAsync();
        }
    }
}
