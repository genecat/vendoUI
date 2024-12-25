using System;
using System.Collections.Generic;
using System.Text;

namespace GeneralModels.MessageCenter
{
   public class MessageModel
    {
        public string Id { get; set; }
        public string mesage { get; set; }
        public bool is_html { get; set; }
        public string title { get; set; }
        public int messagetype { get; set; }
        public string emailtemplate { get; set; }
        public DateTime datecreated { get; set; }
        public DateTime dateseen { get; set; }
        public string receiver { get; set; }
        public string metadata { get; set; }
    }
}
