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
    /// Interaction logic for StartPage.xaml
    /// </summary>
    public partial class StartPage : UserControl
    {
        public StartPage()
        {
            InitializeComponent();
            this.DataContext = this;
            
        }

        private void existingToSignIN(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(1);
        }

        private void newToRegest(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(6);
        }
    }
}
