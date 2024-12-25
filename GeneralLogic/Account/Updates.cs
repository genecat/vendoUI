using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using GeneralModels.Account;
using GeneralModels.Advertiser.CashAccount;
using Microsoft.AspNetCore.Components;

namespace GeneralLogic.Account
{
    public class Updates
    {
        public async Task<bool> UpdateGeneral(GeneralUpdateDetails details)
        {
            return await HttpRequestWrappers.MainApiPutRequest<bool>("account/updategeneral", details);
        }

        public async Task<bool> UpdateRep(RepresentativeUpdateDetails details)
        {
            return await HttpRequestWrappers.MainApiPutRequest<bool>("account/updaterep", details);
        }

        public async Task<bool> UpdateConsent(ConsentUpdateDetails details)
        {
            return await HttpRequestWrappers.MainApiPutRequest<bool>("account/updateconsent", details);
        }
    }
}
