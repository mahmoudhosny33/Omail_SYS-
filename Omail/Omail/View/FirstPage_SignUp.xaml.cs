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
    /// Interaction logic for SignUp.xaml
    /// </summary>
    public partial class FirstPage_SignUp : UserControl
    {
        EmailValidation emlvald = new EmailValidation();
        OmailEntities1 oml = new OmailEntities1();
        public FirstPage_SignUp()
        {
            InitializeComponent();
            this.DataContext = this;
        }
        private void addData(object sender, RoutedEventArgs e)
        {
            //try
            if (!(FirstName.Value.Length != 0 || LastName.Value.Length != 0))
            {
                MessageBox.Show("You should enter your name");

            }
            else
            {

                string EmpName = FirstName.Value + LastName.Value;                                                               //{
                string firstName = FirstName.Value;
                string lastName = LastName.Value;                                                                    //    CRUD.Emp add = new CRUD.Emp();
                string EmpEmail = Email.Value;
                string pass = Password.Value;                                                                    //    string first = FirstName.Value;
                MainWindow.USerMAil.USML = EmpEmail;
                try
                {

                    emlvald.Email_IsValid(EmpEmail);

                    string verypass = VerifyPassword.Value;                                                                    //    string last = LastName.Value;
                    DateTime birthdate = DateTime.Now;

                    if (pass.Equals(verypass) && pass.Length != 0)
                    {
                        try
                        {

                            string EmpHash = pass;
                            oml.AddEmployee(EmpName, firstName, lastName, EmpEmail, birthdate,
                                "01155443232", EmpHash, "1333", "Male", true, false, false, false, false, null, null);
                            oml.SaveChanges();
                            MessageBox.Show("Data added");
                            MainWindow man = (MainWindow)Window.GetWindow(this);
                            man.trns(4);
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message);
                        }
                    }
                    else
                    {
                        MessageBox.Show("You password isn't valid");
                    }
                }
                catch (Exception ee)
                {
                    MessageBox.Show(ee.Message);
                }
            }

        }

        private void RadioButton_Checked(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(1);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(0);
        }
    }
}
