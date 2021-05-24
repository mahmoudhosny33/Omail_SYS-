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
    public partial class TextLabel : UserControl
    {
        public TextLabel()
        {
            InitializeComponent();
            this.DataContext = this;
        }

        public string Value { get { return text.Text; } set { } }

        public string ID { get; set; }
        public string Hint { get; set; }

    }
}
