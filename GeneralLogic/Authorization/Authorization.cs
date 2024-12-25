using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace GeneralLogic.Authorization
{
   public class Authorization
    {
        public static Task<int> GetCurrentAccountType()
        { 
            return HttpRequestWrappers.MainApiGetRequest<int>("/getcurrentaccounttype");
        }

        public static Task<bool> ChangeCurrentAccountType(int newtype)
        {
            return HttpRequestWrappers.MainApiGetRequest<bool>("/changecurrentaccounttype?newtype="+newtype.ToString());
        }
    }
}
