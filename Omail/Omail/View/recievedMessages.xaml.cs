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
    /// Interaction logic for recievedMessages.xaml
    /// </summary>
    public partial class recievedMessages : UserControl
    {
        private List<emailItem> ema = new List<emailItem>();

        Employee emp = new Employee();
        Employee emp1 = new Employee();
        OmailEntities1 OM;
        EmailView email = new EmailView();
        emailItem emailItem = new emailItem();
        public recievedMessages()
        {
            InitializeComponent();
            showM();
        }
        
        public void showM()
        {

            this.DataContext = ema;

            try
            {
                
                ema = email.getSentMails(MainWindow.USerMAil.USML1);

                ListMessages.ItemsSource = ema;

            }
            catch (Exception eee)
            {
                MessageBox.Show(eee.Message);
            }
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

        private async void DeleteBTN_Click(object sender, RoutedEventArgs e)
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

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(2);
            List<emailItem> emptyYourList = new List<emailItem>();
            ListMessages.ItemsSource = emptyYourList;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            showM();
        }
        private async void OPenBTN_Click(object sender, RoutedEventArgs e)
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
