   M S B A M L   `   `   `  ����@  <Omail, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Omail.View
Omail.View  5   	   3clr-namespace:Omail.ComponentsOmail.Components  5   	   %    Omail.View.Create_Org_FirstPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   *localclr-namespace:Omail.View     5   	   5
Componentsclr-namespace:Omail.Components     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   $	��770��5   	   $
��1400��6      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��1.5* �6   �� 5      $��* �6   �� 5      $
��2.5* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��2* �6   .+�5   
   '   !Omail.Components.BlueGradientRect  $��2��6&   $��3��6:      Omail.Components.AppPanel  5   
   $��2��6   $	��Top=�62   �� 5    
    
 NewOrg#��[ 6   $��Center=�61   $��2��6N   $��	0,100,0,0q�6b   �� 5"   
   
������� �� CornerRadius$ 70,70,70,70��6$   $
��1300��6?   $	��450��6L   $��2��6Y   $��3��6m   $��	0,200,0,0q�6~   ._�5#      ��  �� Orientation$ 
Horizontal=�6   $��50q�62   .+�5$      �� $��	0,0,850,0q�6   .+�5%          Omail.Components.TextLabel  -   5          Name$ OrgnatizationName��5%   '      Hint$ OrginaztionName��6B     5(      -   5        $ vision��5(   '   $ Vision Statement��67     5)      -   5        $ OrgTypee��5)   '   $ Organization��69   5+      �� 5,      $	��500��6   $��-1000,0,0,0q�6)   .+�5-        -   5        $ 
MangerName��5-   +   $ Manger Name��6?   �� 5/      -   5        $��OrgType��5/   k   $��0,50,0,0q�6    )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Admin Role��62   $	��320��6^   .@�50      �� .��6'   Organization Manger6<   �� 51      .��6'   
Employee61   52      �� 53      -   5        $��OrgCodeGenerator��53   s   $��0,50,0,0q�6    $ Org-Code Generator��62   $	��320��6f   .@�54      �� .��6'   
Activate61   �� 55      .��6'   None6-   56      57      58      5:      �� 5;   
   $ 
Horizontal=�6   $��2��6.   $��3��6B   .+�5<   
   �� -   5        $��500,0,0,100q�5<       " MaterialDesignRaisedDarkButton#��[ 6&   $��Bottom=�6^   $	��100��6y   $��25��6�   ��5=      '  !MaterialDesignThemes.Wpf.PackIcon  5>      �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]	   Kind$	 	ArrowBack=�6,   5@      �� 5A   
   -   5        
 ��Name$
 
NextButton��5A      $
��Next��6&   $	��100��65   $��25��6A   $��500,0,0,100q�6N   $��Bottom=�6d   6   5B      5C      5D      