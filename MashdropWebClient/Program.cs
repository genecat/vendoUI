using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Text;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.JSInterop;
using System.Threading;
using Microsoft.AspNetCore.Components;


using System.Net.Http;
using Microsoft.AspNetCore.Components.Forms;
using Microsoft.AspNetCore.Components.Routing; 

using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using Microsoft.AspNetCore.Components.WebAssembly.Infrastructure;
using System.Linq;

namespace MashdropWebClient
{
    public class Program  
    {
       

        public static async Task Main(string[] args)
        {
           
            
               
           

            var builder = WebAssemblyHostBuilder.CreateDefault(args);
            builder.RootComponents.Add<App>("app");

          //  builder.Services.AddTransient(sp => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });

            await builder.Build().RunAsync();


        }


       


    }
}
