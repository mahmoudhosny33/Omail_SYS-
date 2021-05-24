using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Omail.API
{
    
    class EmailView
    {
        
        private OmailEntities1 OM = new OmailEntities1();
       
        
        public List<emailItem> revrs(List<emailItem> items)
        {
            List<emailItem> items1 = new List<emailItem>();
            for(int i = items.Count - 1; i >= 0; i--)
            {
                items1.Add(items[i]);
            }
            return items1;
        }
        public List<emailItem> getmails(int id)
        {
            List<emailItem> emailViews=new List<emailItem>();
            
            
            for (int i = 0; i < OM.GetEmployeeEmails(id).ToList().Count(); i++)
            {
                var list = OM.GetEmployeeEmails(id).ElementAt(i);
                emailViews.Add(new emailItem(getNameAndEmailbByID(list.EmpId).EmpName,
                    list.E_Subject, getNameAndEmailbByID(list.EmpId).EmpEmail, list.SentTime.Value));

            }
            
            return emailViews = revrs(emailViews);
            //.FromBinary(BitConverter.ToInt64(
        }
    public List<emailItem> getSentMails(int id)
        {
            List<emailItem> emailViews = new List<emailItem>();
            EmailView email = new EmailView();

            for (int i = 0; i < OM.GetEmailsSentByEmployees(id).ToList().Count(); i++)
            {
                var list = OM.GetEmailsSentByEmployees(id).ElementAt(i);
                emailViews.Add(new emailItem(getNameAndEmailbByID(list.EmpId).EmpName,
                    list.E_Subject, getNameAndEmailbByID(list.EmpId).EmpEmail, list.SentTime.Value));
            }
            return emailViews=revrs(emailViews);

        }
        public List<emailItem> getImportantMails(int id)
        {
            List<emailItem> emailViews = new List<emailItem>();
            EmailView email = new EmailView();

            for (int i = 0; i < OM.GetEmployeeStarredEmails(id).ToList().Count(); i++)
            {
                var list = OM.GetEmployeeStarredEmails(id).ElementAt(i);
                emailViews.Add(new emailItem(getNameAndEmailbByID(list.EmpId).EmpName,
                    list.E_Subject, getNameAndEmailbByID(list.EmpId).EmpEmail, list.SentTime.Value));
            }
            return emailViews = revrs(emailViews);

        }
        public List<emailItem> getSpamMails(int id)
        {
            List<emailItem> emailViews = new List<emailItem>();
            EmailView email = new EmailView();

            for (int i = 0; i < OM.GetEmployeeSpamEmails(id).ToList().Count(); i++)
            {
                var list = OM.GetEmployeeSpamEmails(id).ElementAt(i);
                emailViews.Add(new emailItem(getNameAndEmailbByID(list.EmpId).EmpName,
                    list.E_Subject, getNameAndEmailbByID(list.EmpId).EmpEmail, list.SentTime.Value));
            }
            return emailViews = revrs(emailViews);

        }
        public  Employee  getNameAndEmailbByID(int id)
        {
            Employee employee = new Employee();
            
            using (var oml = new OmailEntities1())
            {
                Employee emp = oml.Employees.First(i => i.EmpId == id);

                employee= emp;                 
            }
            return employee;
        }
        public Employee getNameAndIDByMail(string emilemp)
        {
            Employee employee = new Employee();
            using (var oml = new OmailEntities1())
            {
                Employee emp = oml.Employees.First(i => i.EmpEmail == emilemp);

                employee = emp;
            }
            return employee;
        }
    }
}
//email.subject = list.E_Subject;
//email.userName = getNameAndEmailbByID(list.EmpId).EmpName;
//email.eml = getNameAndEmailbByID(list.EmpId).EmpEmail;
//email.body = list.Body;
//email.sentime = list.SentTime.Value;
//emailViews.Add(email);