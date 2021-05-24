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
using Omail.View;

namespace Omail.View
{
    /// <summary>
    /// Interaction logic for SignUp.xaml
    /// </summary>
    public partial class SignUp : UserControl
    {
        public SignUp()
        {
            InitializeComponent();
            this.DataContext = this;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(3);
        }

        private void RadioButton_Checked(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(1);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {

                MainWindow mainWindow = new MainWindow();

                string empmail = MainWindow.USerMAil.USML;
                string phone = Phone.Value;
                string orgcode = OrgCode.Value;
                if (phone.Length == 11 && phone.StartsWith("01"))
                {

                    DateTime date = DateTime.ParseExact(Birthday.Value,"dd/MM/yyyy", null);
                    using (var oml = new OmailEntities1() )
                    {
                        Employee emp = oml.Employees.First(i => i.EmpEmail == empmail);
                        emp.PhoneNumber = phone;
                        emp.BirthDate = date;
                        emp.OrgCode = orgcode;
                        oml.SaveChanges();
                        MessageBox.Show("Employee added");
                
                    }
                    MainWindow man = (MainWindow)Window.GetWindow(this);
                    man.trns(1);
                }
                else
                {
                    MessageBox.Show("invalid phone number");
                }

            }
            catch (Exception ee)
            {
                MessageBox.Show(ee.Message);
            }


        }
    }
}

            