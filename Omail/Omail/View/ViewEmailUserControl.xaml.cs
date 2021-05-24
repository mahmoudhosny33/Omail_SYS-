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
    /// Interaction logic for ViewEmailUserControl.xaml
    /// </summary>
    public partial class ViewEmailUserControl : UserControl
    {
        EmailView eml = new EmailView();
        
        public ViewEmailUserControl()
        {
            InitializeComponent();
        }

       
        private void RefreshBTN_Click(object sender, RoutedEventArgs e)
        {
            
            using(var om = new OmailEntities1())
            {
               var emal = om.GetEmail(MainWindow.USerMAil.Email).ToList().ElementAt(0);
                Subject.Content = emal.E_Subject;
                Emaill.Content = eml.getNameAndEmailbByID(emal.EmpId).EmpEmail;
                Bodyy.Content = emal.Body;
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(2);
            Subject.Content = "Subject";
            Emaill.Content = "Email";
            Bodyy.Content = "Body Of Message";
        }
    }
}
