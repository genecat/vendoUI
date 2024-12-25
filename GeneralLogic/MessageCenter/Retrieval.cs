using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace GeneralLogic.MessageCenter
{
    public class Retrieval
    {
        public static async Task<List<GeneralModels.MessageCenter.MessageModel>> GetAll()
        {
            return await HttpRequestWrappers.MainApiGetRequest<List<GeneralModels.MessageCenter.MessageModel>>("MessageCenter/GetAllMessages");
        }

        public static async Task<List<GeneralModels.MessageCenter.MessageModel>> GetLatest(DateTime lastcheck)
        {
            return await HttpRequestWrappers.MainApiGetRequest<List<GeneralModels.MessageCenter.MessageModel>>("MessageCenter/GetLatestMessages?lastcheck="+lastcheck.ToString());
        }
    }
}
