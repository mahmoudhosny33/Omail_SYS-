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
using Omail.Components;
using Omail.API;
namespace Omail.View
{
    /// <summary>
    /// Interaction logic for MainPage.xaml
    /// </summary>
    
    public partial class SignIn : UserControl
    {
        EmailValidation emlvald = new EmailValidation();
        public SignIn()
        {
            InitializeComponent();
            this.DataContext = this;
        }

        private void SignIn_Button_Click(object sender, RoutedEventArgs e)
        {
                string email = Email.Value;
            
                string pass = Password.Value;
            try
            {
                emlvald.Email_IsValid(email);
                
                string verify,name;
                try
                {

                using (var oml = new OmailEntities1())
                {
                    Employee emp = oml.Employees.First(i => i.EmpEmail == email);

                        verify = emp.EmpHash;
                        name = emp.FirstName;
                        MainWindow.USerMAil.USML1 = emp.EmpId;
                }


                if (verify.Equals(pass))
                {
                    MainWindow man = (MainWindow)Window.GetWindow(this);
                    man.trns(2);                
                    MessageBox.Show("Welcome Mr " + name + " (:");
                }
                    else
                    {
                        MessageBox.Show("Wrong password !");
                    }
                }
                catch(Exception ex)
                {
                
                    MessageBox.Show(ex.Message);
                }
            }
            catch(Exception ee)
            {
                    MessageBox.Show(ee.Message);
            }
            
            
        }

        private void SignUp_Checked(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(3);


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(0);
        }
    }
}
