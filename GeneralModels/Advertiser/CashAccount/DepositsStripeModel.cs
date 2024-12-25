using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Text;

namespace GeneralModels.Advertiser.CashAccount
{
    public class DepositsStripeModel
    {
        public decimal amnt { get; private set; }
        public string cnum { get; private set; }
        public byte expm { get; private set; }
        public uint expy { get; private set; }
        public string cvc { get; private set; }

        public DepositsStripeModel(decimal _amnt, string _cnum, byte _expm, uint _expy, string _cvc)
        {
            if (_amnt > 0)
            {
                amnt = _amnt;
            }

            if (!string.IsNullOrEmpty(_cnum))
            {
                cnum = _cnum;
            }

            if (_expm > 0 && _expm < 13)
            {
                expm = _expm;
            }

            if (_expy > 0)
            {
                expy = _expy;
            }
            
            if(!string.IsNullOrEmpty(_cvc))
            {
                cvc = _cvc;
            }
        }
    }
}
