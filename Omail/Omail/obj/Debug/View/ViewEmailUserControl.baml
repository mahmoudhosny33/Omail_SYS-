   M S B A M L   `   `   `  ����@  <Omail, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Omail.View
Omail.View  5      3clr-namespace:Omail.ComponentsOmail.Components  5      %    Omail.View.ViewEmailUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:Omail.View     5      5
Componentsclr-namespace:Omail.Components     5      8icons&clt-namespace:Omail.ResourceDictionary     5      U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      $	��770��5      $
��1400��6      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $��50 �6   �� 5      $
��336* �6   .+�5   
   '   !Omail.Components.BlueGradientRect  $��3��6&      Omail.Components.AppPanel  5   
   $��0��6   �� 5   
   -   5         ��Name$
 Back��5      $��10 0 0 0q�6    " MaterialDesignRaisedDarkButton#��[ 61   $��Center=�6i   $��1��6�   $
��Left=�6�   $	��100��6�   $��50��6�   ��5      '  !MaterialDesignThemes.Wpf.PackIcon  5      �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowBack=�6*   5!      �� 5"   
   -   5        $ 
RefreshBTN��5"      $��10 0 0 0q�6%   #��[ 67   $��Center=�6o   $��1��6�   $��Right=�6�   $	��100��6�   $��50��6�   ��5#        5$      $ Refresh=�6*   5&      �� 5'   
   
�������$��10q�6%    �� CornerRadius$ 20��6;   $��30,50,30,30q�6M   $��2��6b   ._�5(      � .+�5*      �� -   5         ��Name$ Subject��5*      $��Stretch=�6)   $��Italic$�6O   $��Arial Black)�6b   $��24(�6{   $��Black"�6�   $��20,20,10,10q�6�   $��2��6�   ��5+      �� 5,       �� TextWrapping$
 Wrap=�6%   $��Subject��69   5.      �� 5/      -   5        $ Emaill��5/      $��Stretch=�6(   $��Italic$�6N   $��Arial Black)�6a   $��24(�6z   $��Black"�6�   $��20,100,10,10q�6�   $��2��6�   ��50      �� 51      $
 Wrap=�6%   $��Email��69   53      �� 54      -   5        $ Bodyy��54      $��Stretch=�6'   $��Italic$�6M   $��Arial Black)�6`   $��24(�6y   $��Black"�6�   $��20,200,10,10q�6�   $��2��6�   ��55      �� 56      $
 Wrap=�6%   $��Body Of Message��69   58      5=      5>      5?      5@      