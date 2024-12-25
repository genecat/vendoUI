using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace GeneralLogic.Advertiser.Management
{
    public class Websites
    {
        #region retrieve
        public static Task<Dictionary<string, string>> GetCampaigns()
        {
            return HttpRequestWrappers.MainApiGetRequest<Dictionary<string, string>>("advertiser/websitemanager/getallcampaigns");
        }

        public static Task<GeneralModels.Advertiser.Management.CampaignModel> GetCampaignDetails(string cid)
        {
            return HttpRequestWrappers.MainApiGetRequest<GeneralModels.Advertiser.Management.CampaignModel>("advertiser/websitemanager/getcampaigndetails?cmp="+cid);
        }

        public static Task<Dictionary<string, string>> GetWebsites(string cmp)
        {
            return HttpRequestWrappers.MainApiGetRequest<Dictionary<string, string>>("advertiser/websitemanager/getwebsitesbycampaign?cmp=" + cmp);
        }

        public static Task<GeneralModels.Advertiser.Management.CampaignWebsiteModel> GetWebsiteDetails(string wid)
        {
            return HttpRequestWrappers.MainApiGetRequest<GeneralModels.Advertiser.Management.CampaignWebsiteModel>("advertiser/websitemanager/getwebsitedetails?wid="+ wid);
        }

        public static Task<List<GeneralModels.Advertiser.Management.CampaignContainers>> GetContainers(string wid)
        {
            return HttpRequestWrappers.MainApiGetRequest<List<GeneralModels.Advertiser.Management.CampaignContainers>>("advertiser/websitemanager/getcampaignwebsitecontainers?wid="+ wid);
        }


        #endregion


        #region updates
        public static Task<bool> ResumeWebsite(string wid)
        {
            return HttpRequestWrappers.MainApiPutRequest<bool>("advertiser/websitemanager/resumewebsite?wid=" + wid, null);
        }
        public static Task<bool> PauseWebsite(string wid)
        {
            return HttpRequestWrappers.MainApiPutRequest<bool>("advertiser/websitemanager/pausewebsite?wid="+wid,null);
        }

        public static Task<bool> SuspendCampaign(string cid)
        {
            return HttpRequestWrappers.MainApiPutRequest<bool>("advertiser/websitemanager/suspendcampaign?cid="+cid,null);
        }

        public static Task<bool> PauseCampaign(string cid)
        {
            return HttpRequestWrappers.MainApiPutRequest<bool>("advertiser/websitemanager/pausecampaign?cid=" + cid, null);
        }

        public static Task<bool> ResumeCampaign(string cid)
        {
            return HttpRequestWrappers.MainApiPutRequest<bool>("advertiser/websitemanager/resumecampaign?cid=" + cid, null);
        }

        //containers 

        public static Task<bool> ResumeContainer(string cid)
        {
            return HttpRequestWrappers.MainApiPutRequest<bool>("advertiser/websitemanager/resumecampaigncontainer?cid=" + cid, null);
        }

        public static Task<bool> PauseContainer(string cid)
        {
            return HttpRequestWrappers.MainApiPutRequest<bool>("advertiser/websitemanager/pausecampaigncontainer?cid=" + cid, null);
        }

        #endregion
    }
}
