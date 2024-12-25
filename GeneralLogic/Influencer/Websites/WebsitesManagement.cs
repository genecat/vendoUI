using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using GeneralModels.Influencer.Websites;
using Newtonsoft.Json;

namespace GeneralLogic.Influencer.Websites
{
    public class WebsitesManagement
    {
        public static async Task<string> InsertWebsiteListing(GeneralModels.Influencer.Websites.GeneralFormObject obj)
        {
            
           // return HttpRequestWrappers.MainApiPostRequest<string>("/influencer/insertnewwebsitelisting", obj);
            var resp = await GeneralLogic.GeneralObjects.httpClient_api.PostAsync("influencer/insertnewwebsitelisting", new StringContent(JsonConvert.SerializeObject(obj), Encoding.UTF8, "application/JSON"));

            return resp.IsSuccessStatusCode ? await resp.Content.ReadAsStringAsync() : "";
        }

        
        public static Task<int> UpdateGeneralListingDetails(string wid, string description, int category, string statsurl, int avgusers, int avgvist, string logoid)
        {
            Dictionary<string, object> _params = new Dictionary<string, object>();
            _params.Add("wid", wid);
            _params.Add("description", description);
            _params.Add("category", category);
            _params.Add("statsurl", statsurl);
            _params.Add("avgusers", avgusers);
            _params.Add("avgvist", avgvist);
            _params.Add("logoid", logoid);
            return HttpRequestWrappers.MainApiPutRequest<int>("influencer/updategenerallistingdetails", _params);
        }

        public static Task<int> SuspendWebsite(string wid)
        {
            return HttpRequestWrappers.MainApiPutRequest<int>("influencer/suspendwebsite", wid);
        }

        public static Task<int> VerifyWebsite(string wid)
        {
            return HttpRequestWrappers.MainApiPostRequest<int>("influencer/verifywebsite", wid);
        }

        public static async Task<string> TurnOnWebsiteContainer(string wid, int ctp)
        {
            Dictionary<string, object> _params = new Dictionary<string, object>();
            _params.Add("wid", wid);
            _params.Add("ctp", ctp);
           //HttpRequestWrappers.MainApiPutRequest<string>("influencer/turnonwebsitecontainer", _params);
            var resp = await GeneralLogic.GeneralObjects.httpClient_api.PutAsync("influencer/turnonwebsitecontainer", new StringContent(JsonConvert.SerializeObject(_params), Encoding.UTF8, "application/JSON"));

            return resp.IsSuccessStatusCode ? await resp.Content.ReadAsStringAsync() : "";
        }

        public static Task<int> TurnOffWebsiteContainer(string wid, int ctp)
        {
            Dictionary<string, object> _params = new Dictionary<string, object>();
            _params.Add("wid", wid);
            _params.Add("ctp", ctp);
            return HttpRequestWrappers.MainApiPutRequest<int>("influencer/turnoffwebsitecontainer", _params);
        }

        public static Task<VerificationRecord> GetVerificationData(string wid)
        {
            string paramsUri = string.Format("?wid={0}", wid);
            return HttpRequestWrappers.MainApiGetRequest<VerificationRecord>("influencer/websites/getverificationdata" + paramsUri);
        }

        public static Task<GeneralFormObject> GetGeneralWebsiteListingDetails(string wid)
        {
            string paramsUri = string.Format("?wid={0}", wid);
            return HttpRequestWrappers.MainApiGetRequest<GeneralFormObject>("influencer/websitemanager/getgeneralwebsitelistingdetails" + paramsUri);
        }

        public static Task<List<AllWebsitesObject>> GetWebsites()
        {
            return HttpRequestWrappers.MainApiGetRequest<List<AllWebsitesObject>>("influencer/websitemanager/getwebsites");
        }

        public static Task<List<ContainerData>> GetWebsiteContainers(string wid)
        {
            string paramsUri = string.Format("?wid={0}", wid);
            return HttpRequestWrappers.MainApiGetRequest<List<ContainerData>>("influencer/websitemanager/getwebsitecontainers" + paramsUri);
        }

        
    }
}
