   M S B A M L   `   `   `  ����@  <Omail, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Omail.View
Omail.View  5      3clr-namespace:Omail.ComponentsOmail.Components  5          Omail.View.sendEmail   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:Omail.View     5      5
Componentsclr-namespace:Omail.Components     5      8icons&clt-namespace:Omail.ResourceDictionary     5      U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      $	��770��5      $
��1400��6      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $��50 �6   �� 5      $��50 �6   �� 5      $��50 �6   �� 5      $	��494 �6   �� 5      .+�5   
      Omail.Components.AppPanel  $��0��6   '   !Omail.Components.BlueGradientRect  5   
   $��1��6'   $��5��64   �� 5   
   -   5         " MaterialDesignRaisedDarkButton#��[ 5      $
��Left=�6J   $��Center=�6e   $	��100��6�   $��50��6�   $��1��6�   ��5       '  !MaterialDesignThemes.Wpf.PackIcon  5!      �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowBack=�6*   5#      �� 5$   
   -   5         ��Name$ texTo��5$      $��2��6!    % !MaterialDesignFloatingHintTextBox#��[ 6.   
�������)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ to��6|   $��30(�6�   $
��25,0q�6�   �� 5%   
   -   5        $ Subject��5%      $��3��6$   #��[ 61   
�������$ Subject��6   $��30(�6�   $
��25,0q�6�   �� 5&   
   $	��400��6   $
��1300��6    �� CornerRadius$ 50��6+   $��4��6=   
�������$��20q�6]   ._�5'      �� -   5        $
 Body��5'      $
��1100��6$    �� TextWrapping$
 Wrap=�61   $��Stretch=�6E    �� AcceptsReturn . $	��400��5(   -   #��[ 6:   
�������$	��Top=�6�   $��30(�6�   5)      �� 5*   
   -   5        #��[ 5*      $��Right=�6J   $��Center=�6f   $	��100��6�   $��50��6�   $��5��6�   ��5+        5,      $
 Send=�6*   5.      5/      50      