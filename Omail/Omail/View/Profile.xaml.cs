using System;
using System.Collections.Generic;
using System.Data;
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
    /// Interaction logic for Profile.xaml
    /// </summary>
    public partial class Profile : UserControl
    {

        private List<emailItem> ema = new List<emailItem>();

        Employee emp = new Employee();
        Employee emp1 = new Employee();
        OmailEntities1 OM ;
        EmailView email = new EmailView();
        emailItem emailItem = new emailItem();
        sqlBTNs sqlBTNs = new sqlBTNs();
        // internal List<EmailView> Ema { get => ema; set => ema = value; }

        public Profile()
        {
            InitializeComponent();
            this.DataContext = this;
            showM();
        }
       
        
        public  void showM()
        {
            

            this.DataContext = ema;

            try
            {
                ema =  email.getmails(MainWindow.USerMAil.USML1);

                ListMessages.ItemsSource = ema;
                
            }
            catch(Exception eee)
            {
                MessageBox.Show(eee.Message); 
            }
            
        }

        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenu.Visibility = Visibility.Collapsed;
            ButtonCloseMenu.Visibility = Visibility.Visible;
            
            logoImageEllipse.Visibility = Visibility.Visible;
        }

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonCloseMenu.Visibility = Visibility.Collapsed;
            ButtonOpenMenu.Visibility = Visibility.Visible;
            
            logoImageEllipse.Visibility = Visibility.Collapsed;
        }
        
        private void ReFresh_Click(object sender, RoutedEventArgs e)
        {
            showM();

        }

        private async void SpamBTN_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                emailItem = (emailItem)ListMessages.SelectedItem;
                emp1 = email.getNameAndIDByMail(emailItem.eml);
                int id = await sqlBTNs.GetEmailsByTime(emp1.EmpId, emailItem.sentTime);

                string result = await sqlBTNs.MarkEmailAsSpam(id, MainWindow.USerMAil.USML1);
                showM();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }


        }

        private async void  DeleteBTN_Click(object sender, RoutedEventArgs e)
        {
            try
            { 
                emailItem = (emailItem)ListMessages.SelectedItem;
                emp1 = email.getNameAndIDByMail(emailItem.eml);
                int id = await sqlBTNs.GetEmailsByTime(emp1.EmpId, emailItem.sentTime);
                string result = await sqlBTNs.MarkEmailAsDeleted(id, MainWindow.USerMAil.USML1);
                showM();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
    

        private void LogOutBTN_Click(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(0);
            List<emailItem> emptyYourList = new List<emailItem>();
            ListMessages.ItemsSource = emptyYourList;
        }

        private void SendMessage_Selected(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(8);
        }

        private void SpamMessage_Selected(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(10);
        }

        private void Reci_Selected(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(7);
            
        }

        private void ListViewItem_Selected(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(9);
        }

        private async void ImportantBTN_Click(object sender, RoutedEventArgs e)
        {
            try
            {
               
                emailItem = (emailItem)ListMessages.SelectedItem;
                emp1 = email.getNameAndIDByMail(emailItem.eml);
                int id = await sqlBTNs.GetEmailsByTime(emp1.EmpId, emailItem.sentTime);
                
                string result = await sqlBTNs.MarkEmailAsStarred(id,MainWindow.USerMAil.USML1);


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private  async  void OPenBTN_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                emailItem = (emailItem)ListMessages.SelectedItem;
                emp1 = email.getNameAndIDByMail(emailItem.eml);
                MainWindow.USerMAil.Email = await sqlBTNs.GetEmailsByTime(emp1.EmpId, emailItem.sentTime);
                MainWindow man = (MainWindow)Window.GetWindow(this);
                man.trns(11);
            }
            catch (Exception exx)
            {
                MessageBox.Show(exx.Message);
            }

        }
        
    }
   

}
//emailItem = (emailItem) ListMessages.SelectedItem;
//emp1 = email.getNameAndIDByMail(emailItem.eml);

//                using (var oml = new OmailEntities1())
//                {
//                    Email em = oml.Emails.Where(i => i.EmpId == emp1.EmpId && i.SentTime.Value == emailItem.sentTime).First();

//Employee_has_Email hasEml = oml.Employee_has_Email.Where(i => i.EmailId == em.EmailId && i.EmpId == MainWindow.USerMAil.USML1).First();
//hasEml.IsStarred = false;
//                    hasEml.IsSpam = false;
//                    hasEml.WasDeleted = true;
//                    oml.SaveChanges();
//                }

//emailItem = (emailItem) ListMessages.SelectedItem;
//emp1 = email.getNameAndIDByMail(emailItem.eml);

//                using (var oml = new OmailEntities1())
//                {
//                    Email em = oml.Emails.Where(i => i.EmpId == MainWindow.USerMAil.USML1 && i.SentTime.Value == emailItem.sentTime).First();

//Employee_has_Email hasEml = oml.Employee_has_Email.Where(i => i.EmailId == em.EmailId && i.EmpId == MainWindow.USerMAil.USML1).First();
//hasEml.IsStarred = false;
//                    hasEml.IsSpam = true;
//                    oml.SaveChanges();

//                }

//DateTime date = new DateTime(2019, 12, 12, 21, 28, 43, 420);
//emailItem = (emailItem) ListMessages.SelectedItem;
//MessageBox.Show(emailItem.sentTime.ToString()+"/n"+emp1.EmpId.ToString());
//                List<int> da = (int)OM.GetEmailsByTime(28, date);
//int i = OM.GetEmailsByTime(28, date).ElementAt(0).Value;
//MessageBox.Show(emailItem.sentTime.ToString() + "/n" + emp1.EmpId.ToString() + "/n" + i.ToString());
//                OM.MarkEmailAsStarred(MainWindow.USerMAil.USML1, i);