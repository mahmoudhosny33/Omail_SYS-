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
    /// Interaction logic for importantEmail.xaml
    /// </summary>
    public partial class importantEmail : UserControl
    {
        private List<emailItem> ema = new List<emailItem>();

        Employee emp = new Employee();
        Employee emp1 = new Employee();
        OmailEntities1 OM;
        EmailView email = new EmailView();
        emailItem emailItem = new emailItem();
        sqlBTNs sqlBTNs = new sqlBTNs();
        public importantEmail()
        {
            InitializeComponent();
            showM();
        }

        public void showM()
        {

            this.DataContext = ema;

            try
            {

                ema = email.getImportantMails(MainWindow.USerMAil.USML1);

                ListMessages.ItemsSource = ema;

            }
            catch (Exception eee)
            {
                MessageBox.Show(eee.Message);
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            showM();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(2);
            List<emailItem> emptyYourList = new List<emailItem>();
            ListMessages.ItemsSource = emptyYourList;
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
