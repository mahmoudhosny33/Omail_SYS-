   M S B A M L   `   `   `  ����@  <Omail, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Omail.View
Omail.View  5   	   3clr-namespace:Omail.ComponentsOmail.Components  5   	       Omail.View.Create_Org   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   *localclr-namespace:Omail.View     5   	   5
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
 NewOrg#��[ 6   $��Center=�61   $��2��6N   $��	0,100,0,0q�6b   �� 5"      $��1��6   $��2��6&   .+�5#      ��  �� Orientation$ 
Horizontal=�6   .+�5$      �� 
�������$��Add Logo��63   $��15(�6C   $��
100 20 0 0q�6Q   �� 5%      -   5         ��Name$ SkipLogo��5%   �   $��DemiBold"�6    ( $MaterialDesignUserForegroundCheckBox#��[ 62   
�������$
��Skip��6�   $��10(�6�   $��	30 25 0 0q�6�   5&      �� 5'      $ 
Horizontal=�6   .+�5(      �� -   5         ��Name$ ImageButton��5(      $��Choose File��6A   $��10(�6W   $��
100 20 0 0q�6e   �� 5)      -   5         ��Name$ 	ImageFile��5)   /   
�������$��No file chosen��6B   $��10(�6X   $��	30 25 0 0q�6f   5*      5+      �� 5,   
   -   5         ��Name$ Image��5,      $��100,120,0,0q�6   $��3��64   $��2��6E   $
��Left=�6Y   $	��200��6t   $	��200��6�   �� 5-   
   
�������	 �� CornerRadius$	 70,70,70,70��6$   $	��680��6?   $	��300��6K   $��2��6X   $��3��6l   $��	0,200,0,0q�6}   ._�5/      �� $��2��6   .+�50      �� $ 
Horizontal=�6   $��	60,20,0,0q�66   .+�51      �� $��Structure : ��6   $��15(�60   �� 52      -   5        $ SkipStructure��52      $��DemiBold"�6t   $
��Skip��6�   $��15 0 0 0q�6�   53      �� 55      .+�56          Omail.Components.TextLabel  -   5        
  Name$
 OM��56   +      Hint$* $Organization Managers : Defulte is 1��67     57      -   5        $
 GM��57   +   $# Group Managers : Defulte is 0��67     58      -   5        $	
 Emp��58   +   $ Employees : Defulte is 10��68   59      �� 5:      $ 
Horizontal=�6   $��
180,20,0,0q�66   .+�5;      �� -	   5        $��OrgType��5;   _   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Organization Type��6   $	��320��6R   .@�5<      �� .��6'   	Startup60   �� 5=      .��6'   Organiztion64   5>      5?      5@      5B      �� 5C   
   $ 
Horizontal=�6   $��2��6.   $��3��6B   .+�5D      �� -
   5        $��500,0,0,150q�5D       " MaterialDesignRaisedDarkButton#��[ 6*   $��Bottom=�6b   $	��100��6}   $��25��6�   ��5E      '  !MaterialDesignThemes.Wpf.PackIcon  5F      �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowBack=�6.   5H      �� 5I      -   5        $ FinishButton��5I      $��Finish��6,   $	��100��6=   $��25��6I   $��200,0,0,150q�5J      $��Bottom=�6+   #��[ 6F   5L      5M      5N      5O      