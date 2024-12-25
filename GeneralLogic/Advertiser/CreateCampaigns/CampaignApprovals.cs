using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace GeneralLogic.Advertiser.CreateCampaigns
{
   public class CampaignApprovals
    {
        public static async Task<bool> ApproveCampaign(string wid, string lid)
        {
            string paramsUri = string.Format("?cid={0}&lid={1}", wid, lid);
            return await HttpRequestWrappers.MainApiGetRequest<bool>("influencer/websites/approvecampaign" + paramsUri);
        }

        public static async Task<bool> DeclineCampaign(string wid, string lid)
        {
            string paramsUri = string.Format("?cid={0}&lid={1}", wid, lid);
            return await HttpRequestWrappers.MainApiGetRequest<bool>("influencer/websites/declinecampaign" + paramsUri);
        }
    }
}
