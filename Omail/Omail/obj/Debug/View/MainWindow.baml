   M S B A M L   `   `   `  ����@  <Omail, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Omail.View
Omail.View  5   	   3clr-namespace:Omail.ComponentsOmail.Components  5   	       Omail.View.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Omail.View     5   	   5
Componentsclr-namespace:Omail.Components     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  Omail��5	   	   $	��770��5
   	   $
��1400��6    � Icon$" ../Images-Omail/Top_Icon.ico��5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	   .��5      � .+�5   
   7  1MaterialDesignThemes.Wpf.Transitions.Transitioner  -   5          Name$ Slide��5   &    �� SelectedIndex$ 0��66   !	   AutoApplyTransitionOrigins	 . $
 �� IsSynchronizedWithCurrentItem$

 TrueY�6j   .@�5         Omail.View.StartPage     Omail.View.SignIn  5         Omail.View.Profile  5      !   Omail.View.FirstPage_SignUp  5         Omail.View.SignUp  5         Omail.View.Create_Org  5      %	   Omail.View.Create_Org_FirstPage	  5      !
   Omail.View.recievedMessages
  5          Omail.View.sendEmail  5!         Omail.View.importantEmail  5"         Omail.View.spamView  5#      %   Omail.View.ViewEmailUserControl  5$      5%      5'      5)      