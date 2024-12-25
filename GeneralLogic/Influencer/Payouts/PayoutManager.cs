using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace GeneralLogic.Influencer.Payouts
{
   public class PayoutManager
    {
        public static Task<bool> CreatePayoutData(GeneralModels.Influencer.Payouts.CreatePayoutDataModel obj)
        { 
            return HttpRequestWrappers.MainApiPostRequest<bool>("/influencer/payouts/createpayoutdata", obj);
        }
        
            public static Task<bool> UpdatePayoutData(GeneralModels.Influencer.Payouts.CreatePayoutDataModel obj)
        {
            return HttpRequestWrappers.MainApiPostRequest<bool>("influencer/payouts/updatepayoutdata", obj);
        }
        public static Task<bool> CreateTaxData(GeneralModels.Influencer.Payouts.CreateTaxDataModel obj)
        {
            return HttpRequestWrappers.MainApiPostRequest<bool>("/influencer/payouts/createtaxdata", obj);
        }

        public static Task<GeneralModels.Influencer.Payouts.PayoutDataModel> GetPayoutData()
        {
            return HttpRequestWrappers.MainApiGetRequest<GeneralModels.Influencer.Payouts.PayoutDataModel>("/influencer/payouts/getpayoutdata");
        }

        public static Task<List<GeneralModels.Influencer.Payouts.PayoutRecordModel>> GetPayoutRecordsForPeriod(int year, int month)
        {
            return HttpRequestWrappers.MainApiGetRequest<List<GeneralModels.Influencer.Payouts.PayoutRecordModel>>("/influencer/payouts/getpayoutrecordforperiod?year="+year.ToString()+"&month="+month.ToString());
        }
    }
}
