   M S B A M L   `   `   `  ����@  <Omail, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Omail.View
Omail.View  5      3clr-namespace:Omail.ComponentsOmail.Components  5          Omail.View.StartPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:Omail.View     5      5
Componentsclr-namespace:Omail.Components     5      U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   $	��770��5   	   $
��1400��6      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   .��5      � .+�5   
   �� $	��Top=�6   .+�5         Omail.Components.AppPanel  5      '   !Omail.Components.BlueGradientRect  5   
   $	��700��6&   $��0,10,0,0q�63   �� 5   
   $	��400��6   $
��Left=�6"   $��
50,100,0,0q�6=   .+�5      ��  ! MaterialDesignButtonTextBlock#��[ 6    �� TextAlignment$ Center=�6O   $��Existing Organization��6f   ���#66CCFF$	��Top=�6�   $��26(�6�   	� 5       -   5         	�Name$ ExistingOrgBTN��5    R      MaterialDesignTabRadioButton#��[ 6   $	��300��6j   $	��300��6w   $��20q�6�   ��5!      �� 5"        ExistOrg#��[ 6   $
��Fill=�6?   5$        5%      $	��700��6*   5&      �� 5(   
   $	��400��6   $��Right=�6"   $��	0,100,0,0q�6>   .+�5*      �� #��[ 6   $ Center=�6O   $��New Organization��6f   ���#66CCFF$	��Top=�6�   $��26(�6�   	� 5,      -   5        $ NewOrg��5,   Q   #��[ 6   $	��300��6a   $	��300��6n   $��20q�6z   ��5-      �� 5.       
 NewOrg#��[ 6   $
��Fill=�6=   50        51      $	��700��6*   52      	� 54   
   -   5        $ 
ButtomText��54      $��Center=�6+   $��Bottom=�6H    ! MaterialDesignToolRadioButton#���  6c   .��55      �� �� 56      $��15(�6   #��[ 6*   �� 57      $
��Bold"�6   $�Omail -��6,    �� 58      $5�/ Organization mailing system under your control��6   $��Italic$�6Q   59      5:      5;      5=      5@      