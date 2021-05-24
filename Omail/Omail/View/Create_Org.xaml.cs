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
using Microsoft.Win32;


namespace Omail.View
{
    /// <summary>
    /// Interaction logic for NewOrg.xaml
    /// </summary>
    public partial class Create_Org : UserControl
    {
        public Create_Org()
        {
            InitializeComponent();
        }

        private void Load_Image(object sender, RoutedEventArgs e)
        {
            OpenFileDialog op = new OpenFileDialog();
            op.Title = "Select a picture";
            op.Filter = "All supported graphics|*.jpg;*.jpeg;*.png|" +
              "JPEG (*.jpg;*.jpeg)|*.jpg;*.jpeg|" +
              "Portable Network Graphic (*.png)|*.png";
            if (op.ShowDialog() == true)
            {
                ImageFile.Text = op.FileName;
                Image.Source = new BitmapImage(new Uri(op.FileName));
            }
        }

        private void SkipLogo_Checked(object sender, RoutedEventArgs e)
        {
            ImageButton.IsEnabled = false;
        }

        private void SkipLogo_Unchecked(object sender, RoutedEventArgs e)
        {
            if(ImageButton.IsEnabled == false)
            {
                ImageButton.IsEnabled = true;
            }
        }

        private void SkipStructureChecked(object sender, RoutedEventArgs e)
        {
            OrgType.IsEnabled = false;
            OM.IsEnabled = false;
            GM.IsEnabled = false;
            Emp.IsEnabled = false;
        }

        private void SkipStructureUnchecked(object sender, RoutedEventArgs e)
        {
            OrgType.IsEnabled = true;
            OM.IsEnabled = true;
            GM.IsEnabled = true;
            Emp.IsEnabled = true;
        }

        private void FinishButton_Click(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(0);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow man = (MainWindow)Window.GetWindow(this);
            man.trns(6);
        }
    }
}
