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
    /// Interaction logic for Create_Org_FirstPage.xaml
    /// </summary>
    
       
    public partial class Create_Org_FirstPage : UserControl
    {
        OmailEntities1 om = new OmailEntities1();
        public Create_Org_FirstPage()
        {
            InitializeComponent();
        }

        private void NextButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {

            om.AddOrganization(OrgnatizationName.Value, DateTime.Now, vision.Value, OrgType.Text, false);
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(5);
            }
            catch(Exception ee)
            {
                MessageBox.Show(ee.Message);
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(0);
        }
    }
}
