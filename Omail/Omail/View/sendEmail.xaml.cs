using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Omail.API;
namespace Omail.View
{
    /// <summary>
    /// Interaction logic for sendEmail.xaml
    /// </summary>
    public partial class sendEmail : UserControl
    {
        EmailValidation emlvald = new EmailValidation();
        OmailEntities1 OM = new OmailEntities1();
        public sendEmail()
        {
            InitializeComponent();
        }



        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {
                Employee emp = new Employee();
                EmailView emailView = new EmailView();

                string to, sub, body;
                DateTime sentTime = DateTime.Now;
                to = texTo.Text;
                emlvald.Email_IsValid(to);
                emp = emailView.getNameAndIDByMail(to);
                sub = Subject.Text;
                body = Body.Text;
                if ( sub.Length != 0 && body.Length != 0)
                {
                        OM.AddEmail(MainWindow.USerMAil.USML1, sub, body,false, false, false, null,emp.EmpId.ToString());
                        texTo.Text = "";
                        Subject.Text = "";
                        Body.Text = "";
                }
                else
                {
                    MessageBox.Show("you should fill all field");
                }
            }
            catch (Exception ee)
            {
                MessageBox.Show(ee.Message);
            }
            {

            }

        }
        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(2);
        }
        //string to, sub, body;
        //to = texTo.Text;
        //        sub = Subject.Text;
        //        body = Body.Text;
        //        using (var result = new OmailEntities1())
        //        {
        //            var emails = result.GetEmployeeEmails(2);
        //            foreach (var email in emails)
        //            {
        //                Body.Text = email.Body;
        //            }
        //        }

    }
    //    //}
}