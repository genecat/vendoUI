using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.Advertiser.CreateCampaigns.Websites
{
   public class SearchParamModel
    {
        public   int fromvisitors  {get; set;}  
        public  int tovisitors  {get; set;}  
 
             public  int fromusers  {get; set;} 
        public  int tousers  {get; set;}  
        public  int fromctr  {get; set;}  
        public  int toctr  {get; set;}  
        public  int cat { get; set; }
    }
}
