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

namespace Omail.Components
{
    /// <summary>
    /// Interaction logic for PasswordLabel.xaml
    /// </summary>
    public partial class PasswordLabel : UserControl
    {
        public PasswordLabel()
        {
            InitializeComponent();
            this.DataContext = this;
        }

        public string Hint { get; set; }
        public string Value { get { return password.Password; } set { } }
    }
}
