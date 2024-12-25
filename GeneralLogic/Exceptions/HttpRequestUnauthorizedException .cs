using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Runtime.Serialization;
using System.Text;

namespace GeneralLogic.Exceptions
{
    [Serializable]
    public class HttpRequestUnauthorizedException : HttpRequestException, ISerializable
    {
        public HttpRequestUnauthorizedException()
        {
        }

        public HttpRequestUnauthorizedException(string message)
            : base(message)
        {
        }

        public HttpRequestUnauthorizedException(string message, Exception inner)
            : base(message, inner)
        {
        }

    }


}
