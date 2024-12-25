using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace GeneralLogic.MessageCenter
{
   public class Manager
    {
        public static async Task<bool> DismissMessage(string msgid)
        {
            return await HttpRequestWrappers.MainApiGetRequest<bool>("MessageCenter/dismiss?mid="+msgid);
        }
    }
}
