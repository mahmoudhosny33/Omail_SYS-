   M S B A M L   `   `   `  ����@  <Omail, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Omail.View
Omail.View  5   	   3clr-namespace:Omail.ComponentsOmail.Components  5   	       Omail.View.SignUp   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   *localclr-namespace:Omail.View     5   	   5
Componentsclr-namespace:Omail.Components     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   $	��770��5   	   $
��1400��6      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   '   !Omail.Components.BlueGradientRect  $��0��6&   $
��1400��63   $	��500��6@      Omail.Components.AppPanel  5   
   $	��Top=�6   $��0��66   �� 5   
   $	��100��6     User#��[ 6   $��Center=�6;   $	��Top=�6X   $��50q�6p   �� 5!   
   $	��680��6   $	��500��6   $��Center=�6*   
������� �� CornerRadius$ 70,70,70,70��6Z   $��2��6u   $��0,70,0,0q�6�   ._�5"      �� .+�5$      ��  �� Orientation$ 
Horizontal=�6   .+�5%      	� -   5         d� 	IsChecked$ FalseY�5%   "   $��Sign In��64      MaterialDesignTabRadioButton#��[ 6F   $��30��6|   $	��250��6�   $��Center=�6�   $��70,0,0,0q�6�   7  1MaterialDesignThemes.Wpf.Transitions.Transitioner   MoveFirstCommand#��Z 5&   #   6f   	� 5'      $
 TrueY�6#   $��Sign Up��65   #���  6G   $��30��6   $	��250��6�   $��Center=�6�   $��0,0,0,0q�6�   5(      �� 5*      .+�5,          Omail.Components.TextLabel  -   5          Name$ Phone��5,   -      Hint$ Phone��6=   $��Center=�6J   $��	0,100,0,0q�6g     5-      -   5        $ Birthday��5-   L   	 �� ContentStringFormat$	 
DD MM YYYY��6+   $ Birthday DD MM YYYY��6_   $   Omail.Components.PasswordLabel  5.      -   5        
  Name$
 OrgCode��5.   /      Hint$ Org-Code��6A   5/      �� 51      $	��600��6   $	��150��6)   $��
40,50,40,0q�66   .+�53      �� -   5        $��
300,80,0,0q�53       " MaterialDesignRaisedDarkButton#��[ 62   $��Bottom=�6j   $	��100��6�   $��25��6�   $��SignUp ��6�   6�   �� 54      -   5        $��0,-30,350,0q�54      #��[ 62   $��Bottom=�6j   $	��100��6�   $��25��6�   ��57      '  !MaterialDesignThemes.Wpf.PackIcon  58      �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowBack=�66   5:      5;      5=      5?      5A      5D      