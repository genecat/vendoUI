using GeneralModels.Advertiser.CashAccount;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace GeneralLogic.Advertiser.CashAccount
{
   public class Statistics
    {
        public static async Task<double> GetBalance()
        {
            return await HttpRequestWrappers.MainApiGetRequest<double>("/cashaccount/getbalance");
        }

        public static async Task<object> GetPaymentsHistory(string datefrom, string dateto)
        {
            string paramsUri = string.Format("?datefrom={0}&dateto={1}", datefrom, dateto);
            return await HttpRequestWrappers.MainApiGetRequest<List<PaymentModel>>("cashaccount/getpayments" + paramsUri);
        }

        public static async Task<object> GetRefundsHistory(string datefrom, string dateto)
        {
            string paramsUri = string.Format("?datefrom={0}&dateto={1}", datefrom, dateto);
            return await HttpRequestWrappers.MainApiGetRequest<List<RefundModel>>("cashaccount/getrefunds" + paramsUri);
        }
        public static async Task<object> GetDepositsHistory(string datefrom, string dateto)
        {
            string paramsUri = string.Format("?datefrom={0}&dateto={1}", datefrom, dateto);
            return await HttpRequestWrappers.MainApiGetRequest<List<DepositModel>>("cashaccount/getdeposits" + paramsUri);
        }
    }
}
