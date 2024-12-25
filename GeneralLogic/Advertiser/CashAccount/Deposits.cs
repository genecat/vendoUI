using GeneralModels.Advertiser.CashAccount;
using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Components;
using System.Net.Http.Json;

namespace GeneralLogic.Advertiser.CashAccount
{
    public class Deposits
    {
        public static async Task PostDepositStripe(DepositsStripeModel depositstripe)
        {
            await GeneralObjects.httpClient_api.PostAsJsonAsync("/depositstripe", depositstripe);
        }

        public static async Task<int> CheckStatus(string depid)
        {
           return await HttpRequestWrappers.MainApiGetRequest<int>("/cashaccount/checkdepositstatus?depid=" + depid);
        }


        public static async Task<string> GetDepositIdByStripeId(string stid)
        {
            return await HttpRequestWrappers.MainApiGetRequest<string>("/cashaccount/getidbystripeid?stid=" + stid);
        }




    }
}
