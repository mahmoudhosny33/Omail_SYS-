   M S B A M L   `   `   `  ����@  <Omail, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Omail.View
Omail.View  5      3clr-namespace:Omail.ComponentsOmail.Components  5      !    Omail.View.recievedMessages   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:Omail.View     5      5
Componentsclr-namespace:Omail.Components     5      8icons&clt-namespace:Omail.ResourceDictionary     5      U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      $	��770��5      $
��1400��6      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $��70 �6   �� 5      $��* �6   .+�5   
      Omail.Components.AppPanel  $	��Top=�6   $��0��66   $��40��6C   '   !Omail.Components.BlueGradientRect  5   
   $��1��6&   $��2��63   �� 5   
    �� Orientation$ 
Horizontal=�6   $��1��6.   .+�5       �� -   5        $��10 0 0 0q�5        " MaterialDesignRaisedDarkButton#��[ 6'   $��Center=�6_   $	��100��6{   $��50��6�   ��5!      '  !MaterialDesignThemes.Wpf.PackIcon  5"      �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowBack=�6.   5$      �� 5%      $��
400 0 0 0 q�6   $��Sent Messages ��6(   $��Center=�6A   $��Center=�6^   $��50(�6y   ���	#DDFFFFFF6�   �� 5&      -   5        $��	310 0 0 0q�5&      #��[ 6(   $��Center=�6`   $	��100��6|   $��50��6�   ��5'        5(      $ Refresh=�6.   5*      5+      �� 5,   
   -   5         ��Name$ MessageViewer��5,      $	��700��6(   $
��1300��65   $��2��6C    �� CornerRadius$ 30��6P   ���	#FF20ADD6._�5-      �� -   5         ��Name$ ScrollMessage��5-      .��5.      �� -   5         ��Name$ ListMessages��5.      	 �� View	 50      �� 51      .P�52      �� 
 �� Width$	
 300��6X    �� DisplayMemberBinding 6.   �� *
userName+6X   �� 53      $	
 300��6V    6.   �� *subjct+6V   �� 54      $	
 300��6R    6-   �� *eml+6R   �� 55      $	
 200��6W    6-   �� *
sentTime+6W   �� 56      $
 60��6.    �� CellTemplate 57   "   �� 58   &   .R�59   *   ��  ��Name$ 	DeleteBTN��61   -   5        $��50��59   D   $��50��6P    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 5;   1   
���������6w   Z� ��5<   1   Z� .��5>   .     $ Delete=�6F   $��25��6T   $��25��6_   5?   +   5@   '   5B      �� 5C      $
 60��6-    5D   "   �� 5E   &   .R�5F   *   �� $ SpamBTN��61   -   5        $��50��5F   B   $��50��6N   #��[ 5H   1   
���������6w   Z� ��5I   1   Z� .��5K   .     $ Block=�6F   $��25��6S   $��25��6^   5L   +   5M   '   5O      �� 5P      $
 60��6-    5Q   "   �� 5R   &   .R�5S   *   �� $ OPenBTN��61   -   5        $��50��5S   B   $��50��6N   #��[ 5U   1   
���������6w   Z� ��5V   1   Z� .��5X   .     $ 	OpenInNew=�6F   $��25��6W   $��25��6b   5Y   +   5Z   '   5\      5]      5_      5`      5a      5b      5c      