using System;
using System.Threading.Tasks;
using GeneralLogic.Exceptions;
using System.Net.Http.Json;

namespace GeneralLogic
{
    public   class HttpRequestWrappers 
    {
          
        //TODO: create clear names for the functions below.
        public static async Task<T> MainApiPostRequest<T>(string route, object content)
        {
            
           /// Console.WriteLine(GeneralObjects.httpClient_api.DefaultRequestHeaders.GetValues("Auth").First());
            try
            {
                return  await (await GeneralObjects.httpClient_api.PostAsJsonAsync(route, content)).Content.ReadFromJsonAsync<T>();
            }
            catch (Exception ex)
            {
                if (Is401Response(ex.Message))
                {
                   // NavigationManager nv;
                     
                     
                    throw new HttpRequestUnauthorizedException(ex.Message, ex);
                }

                throw ex;
            }

        }
        public static async Task<T> MainApiGetRequest<T>(string route, object content)
        {
            try
            {
                return await GeneralObjects.httpClient_api.GetFromJsonAsync<T>(route);
            }
            catch (Exception ex)
            {
                if (Is401Response(ex.Message))
                {
                    throw new HttpRequestUnauthorizedException(ex.Message, ex);
                    
                }
                throw ex;
            }
        }

        public static async Task<T> MainApiGetRequest<T>(string route)
        {
            try
            {
                return await GeneralObjects.httpClient_api.GetFromJsonAsync<T>(route);
            }
            catch (Exception ex)
            {
                if (Is401Response(ex.Message))
                {
                    throw new HttpRequestUnauthorizedException(ex.Message, ex);
                }
                throw ex;
            }
        }

        public static async Task<T> MainApiPutRequest<T>(string route, object content)
        {
            try
            {
                return await (await GeneralObjects.httpClient_api.PutAsJsonAsync(route, content)).Content.ReadFromJsonAsync<T>();
            }
            catch (Exception ex)
            {
                if (Is401Response(ex.Message))
                {
                    throw new HttpRequestUnauthorizedException(ex.Message, ex);
                }
                throw ex;
            }
        }

      
       

        //TODO: replace this method in some helper class
        private static bool Is401Response(string str)
        {
            if (!string.IsNullOrEmpty(str))
            {
                return str.Contains("401") || str.ToLower().Contains("unauthorized");
            }

            return false;
        }
    }
}
