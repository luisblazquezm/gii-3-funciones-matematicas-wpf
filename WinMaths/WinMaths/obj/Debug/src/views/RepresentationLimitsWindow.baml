   M S B A M L   `   `   `  ����C  ?WinMaths, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WinMaths.src.viewsWinMaths.src.views  5   	   #clr-namespace:WinMathsWinMaths  5   	   3    -WinMaths.src.views.RepresentationLimitsWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:WinMaths.src.views     5   	   )customclr-namespace:WinMaths     5   	     � Title$   RepresentationLimitsWindow��5	   	   $��278.358��6,   $��422.388��6=   .��5
      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      .+�5   
   � $��0��6   $��0��6$   $��Center=�61   $��Center=�6L   .+�5      �� $��	Minimo X:��6   "   WinMaths.NumericTextBoxClass  5      -   5          Name$ XMinTextBox��5   )   
������ $	��100��6W   $��0 0 0 1q�6c   5      � 5   
   $��1��6   $��0��6$   $��Center=�61   $��Center=�6L   .+�5      �� $��	Maximo X:��6     5      -   5        $ XMaxTextBox��5   )   
������ $	��100��6W   $��0 0 0 1q�6c   5      � 5   
   $��0��6   $��1��6$   $��Center=�61   $��Center=�6L   .+�5       �� $��	Minimo Y:��6     5!      -   5        $ YMinTextBox��5!   )   
������ $	��100��6W   $��0 0 0 1q�6c   5"      � 5$   
   $��1��6   $��1��6$   $��Center=�61   $��Center=�6L   .+�5%      �� $��	Maximo Y:��6     5&      -   5        $ YMaxTextBox��5&   )   
������ $	��100��6W   $��0 0 0 1q�6c   5'      �� 5)   
   -   5        $��ConfirmButton��5)      $��0��6&   $��2��66   $��Confirmar cambios��6C   $��20��6_   $	��120��6k   $��10(�6w   
�������
���   �
���   �6�   �� 5*   
   -   5        $��CancelButton��5*      $��1��6&   $��2��66   $��Cancelar modificar��6C   $��20��6`   $	��120��6l   $��10(�6x   
�������
���   �
���   �6�   5,      5-      