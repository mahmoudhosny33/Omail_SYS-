using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Automation;
using MaterialDesignThemes.Wpf.Transitions;
using Omail.API;
namespace Omail.View
{

    public partial class MainWindow :Window
    {

        public MainWindow()
        {
            
            InitializeComponent();
            this.DataContext = this;           
                       
        }
        public  void trns(int ind)
        {
            

            Slide.SelectedIndex = ind;
            
            
        }

        
        public static class USerMAil
        {
           public static string USML;// email i want to save
            public static int USML1;// id 
            public static int Email;  //EmailID that i get from profile and to put in the viewEmailUserControl
        } 
        
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }
    }
}
