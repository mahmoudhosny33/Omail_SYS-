using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;


namespace Omail.API
{
    class EmailValidation
    {
        MailAddress m;
        public void Email_IsValid(string Email)
        {
            
              m  = new MailAddress(Email);

        }
        public bool Password_IsValid(string password)
        {

            if (password == null )
                return false;
            else if (password.Trim().Length == 0 || (password.Length < 8  || !password.Contains('*') ))
                return false;
            else
                return true;
        }
    }
}
