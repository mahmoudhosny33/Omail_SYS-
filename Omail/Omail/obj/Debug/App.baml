   M S B A M L   `   `   `  ����@  <Omail, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:OmailOmail  5          	Omail.App   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      %localclr-namespace:Omail     5        �� 	Resources  5       �� MergedDictionaries �� Source �� 
TargetType �� Property �� Value �Name ��Name �� CornerRadius	 �� Triggers
 P� Property P� Value �� 
TargetName �� 
TargetType ]�Name ]� Thumb n�Name   ScrollThumbs ]� IncreaseRepeatButton ��Name J� Opacity ]� DecreaseRepeatButton P� 
SourceName  ButtonSelectBrush  	DarkBrush �� Angle  Storyboard1�� 5   
    5      �� 5	      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5
      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $z tpack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.DeepPurple.xaml?�6%   �� 5      $s mpack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Lime.xaml?�6%   �� 5      $# ResourceDictionary/Icons.xaml?�6%   %		  'n�       '�� M    &	 �    �� 5      " n�6   .�5      ��  � �� 5      �� 5      .R�5   "   � $
 Grid��6'   .+�5   &   �� $��Stretch=�60   $��Stretch=�6N   $
��Auto��6j   $
��Auto��5   ,   
������ 6:   �� 5   &   $ 
Rectangle1��6-   $ 	10 0 0 10��6A   $��Stretch=�6Z   $��Stretch=�5   )   $
��Auto��6E   $
��Auto��6R   #��z��5   )   5   #   	 5   "   P� 5   &   
 �@�Tag$ 
Horizontal��6=   . �5   *   �� $ 
Rectangle1��61    � ��$
 Auto��6Z   �� 5   *   $ 
Rectangle1��61    � ��$ 7��6[   5   '   5       5"      5#      �� 5&      " ��6   .�5'      ��  �@��IsFlicksEnabled .  6?   �� 5(       � �� �	#AA070F6363   �� 5)       � �� �	#FFD7D6F063   �� 5*       � ��$ 10��6.   �� 5+       � �� 5,      �� 5-      " ��6.   .R�5.   "   � $ GridRoot��6'   $��12��69   ��6D   Z� .+�5/   &   ]� $ 
PART_Track��6,   $��0��6@   ��. |�.   50   *   n� 51   .   $ Thumb��64   #��z��6C   #���   52   0    54   *   �� 55   .   $ PageUp��6;   $��ScrollBar.PageDownCommand��6K   $ 0Q�6o   |�.  6{    57   *   �� 58   .   $ PageDown��6;   $��ScrollBar.PageUpCommand��6M   $ 0Q�6o   |�.  6{   5:   '   5;   #   	 5=   "   P� 5>   &   $ Thumb��6.   
 �@J�IsMouseOver . . �5?   *   �� # �  61   $ Thumb��5@   -    � ��6@   5A   '   P� 5B   &   $ Thumb��6.   
 �@n�
IsDragging . . �5C   *   �� # �  61   $ Thumb��6U    � ��6h   5D   '   P� 5F   &   
 � {� .  . �5G   *   �� $ Thumb��61    � y�$ 	Collapsed=�6Z   5H   '   P� 5I   &   
 �@��Orientation$ 
Horizontal=�6E   . �5J   *   �� $ GridRoot��61    �@�LayoutTransform 5K   .   �� 5L   2   $	 -90Q�6B   5N   +   �� 5O   *   $ 
PART_Track��61    �@�LayoutTransform 5P   .   �� 5Q   2   $	 -90Q�6B   5S   +   �� 5T   *    � ��$
 Auto��6B   �� 5U   *    � ��$ 12��6C   �� 5V   *   $ Thumb��61    �@�Tag$ 
Horizontal��6S   �� 5W   *   $ PageDown��61    � ��$ ScrollBar.PageLeftCommand��6Z   �� 5X   *   $ PageUp��61    � ��$  ScrollBar.PageRightCommand��6X   5Y   '   5[      5]      5^      �� 5_      6   5`      5c      