   M S B A M L   `   `   `  ����@  <Do_an, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Do_anDo_an  5          Do_an.UC_DaMua   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      %localclr-namespace:Do_an     5      -   5          � 	Resources  5	         TextBox.Static.Border �� Color  TextBox.MouseOver.Border  TextBox.Focus.Border  
txtTimkiem �� 
TargetType �� Property �� Value-  'System.Windows.Input.KeyboardNavigation �� 
TargetType ��Name �� CornerRadius J� SnapsToDevicePixels	 ��Name
 �� Triggers P� Property P� Value �� 
TargetName �� Triggers ]� 
Conditions �� Property �� Value��%�  &	        &	 #     &	 F     &	 i     7   7  7  �� 5
   
   $ 	#FFABAdB3��68   �� 5   
   $ 	#FF7EB4EA��6;   �� 5   
   $ 	#FF569DE5��67   �� 5   
   " ��6#   .�5      ��  � ��# � ��6+   �� 5       � ��8   6,   �� 5       � ��# � ��6+   �� 5       � ��$ 1q�60   �� 5       �@ TabNavigation$
 None=�6A   �� 5       � ��$
 Left=�6;   �� 5       �@�FocusVisualStyle 61   Z� �� 5       �@J�	AllowDrop$
 true��6*   �� 5       �@��PanningMode$ VerticalFirst=�69   �� 5       �@��IsFlicksEnabled$ False��67   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ border��6!   $ 5��61   #��z��6B   #��z��6l   #��z��6�   $
 True��6�   ._�5      �� $	 PART_ContentHost��6+   $|�false��6E   $��Hidden=�6W   $��Hidden=�6~   5      
 5      P� 5       � {�$ false��6;   . �5    "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5!      P� 5"       �@J�IsMouseOver$
 true��6=   . �5#   "   �� $ border��6@   8   � ��6T   5$      P� 5%       �@J�IsKeyboardFocused$
 true��6C   . �5&   "   �� $ border��6@   8   � ��6T   5'      5)      5+       5,      ]� 5-       5.      �� 5/      + �@��#IsInactiveSelectionHighlightEnabled$
 true��6S   �� 50       �@��IsSelectionActive$ false��6A   ./�52      ��  �@��SelectionBrush# � /�67   53      55      56      .��57      �� $ 20��6   ���	#FFE0CDED._�58   
   � .+�59      � $��50��6   $	��Top=�6   $��0,7,0,0q�5:      .+�5;      �� -   5         ��Name$ tittle��5;      $!��Các sản phẩm đã mua ��6,   ���	#FF6F0C0C$��16(�6_   $
��Bold"�6m   $��
10,-10,0,0q�5<      $��Center=�5=      69   �� 5?      -   5         ��Name$	 xoa��5?      $��70��6&   $��28��61   $	��Top=�6=   $��0,7,50,0q�6U   $��Right=�6g   ���	#FF86168E��6�   Z� .��5@      ��  �� Orientation$ 
Horizontal=�6!   .+�5A      �� $��/image/trash.png��6    6<   �� 5C      $
��Xoá��6$   $��Center=�6/   $��5,0,0,0q�6J   6]   5D      5E      �� 5F      -   5        $ spdamua��5F      $	��300��6*   $��30��66   $��Center=�6B   $��Bottom=�6_   $��
-300,0,0,6q�6z   $��Sản phẩm đã mua��6�   ���	#FFCA2929$��0,0,0,0q�6�   $��14(�6  $
��Bold"�6  ��6�   Z� 6(  �� 5G      -   5        $ 	spdangban��5G      $	��300��6,   $��30��68   $��Center=�6D   $��Bottom=�6a   $��
-300,0,0,6q�6|   $��Sản phẩm đang bán��6�   ���	#FFCA2929$��0,0,0,0q�6�   $��14(�6�   $
��Bold"�6  ��6�   Z� 6/  �� 5H      -   5        $ spchoxacnhan��5H      $	��300��6/   $��30��6;   $��Center=�6G   $��Bottom=�6d   $��	300,0,0,6q�6   $#��Đơn hàng chờ xác nhận��6�   ���	#FFCA2929$��0,0,0,0q�6�   $��14(�6�   $
��Bold"�6
  ��6�   Z� 69  �� 5I      -   5        $ spchuaxacnhan��5I      $	��300��60   $��30��6<   $��Center=�6H   $��Bottom=�6e   $��	300,0,0,6q�6�   $��Đang chờ xác nhận��6�   $��0,0,0,0q�6�   ���	#FFDC3B3B$��14(�6  $
��Bold"�6"  ��6�   Z� 6"  5J      �� 5L      $��0,50,0,0q�6   $ 	5,5,20,20��5M      ���	#FFC911B3$��0,2,0,0q�5N   &   ._�5O      �� $
��Auto=�6   .��5P      �� -   5         ��Name$ listsp��5P   #   ��63   �� *List+��5Q      �� 5R      .R�5S   "      Do_an.UC_SpGioHang  $��5q�65   5T      5V      5W      5X      5Z      5[      5]      