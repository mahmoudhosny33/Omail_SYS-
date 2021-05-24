using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Omail.API
{
    class emailItem
    {
       
            public string userName { get; set; }
            public string subjct { get; set; }
            public string eml { get; set; }
            public DateTime sentTime { get; set; }

        public emailItem()
        {

        }
        public emailItem(string Username, string Subjct, string Eml,DateTime SentTime)
            {
                this.userName = Username;
                this.subjct = Subjct;
                this.eml = Eml;
                this.sentTime = SentTime;

            }
        
    }
}
