   M S B A M L   `   `   `  ����C  ?WinMaths, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WinMaths.src.viewsWinMaths.src.views  5      #clr-namespace:WinMathsWinMaths  5      -    'WinMaths.src.views.GraphicDephinitionUI   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:WinMaths.src.views     5      )customclr-namespace:WinMaths     5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5	        N� Title$  GraphicDephinitionUI��5      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   � $��0��6   $��0��6!   $
��Left=�62   $��20 0 0 0q�6M   $��Center=�6_   .+�5       �� -   5        $��AddGraphicButton��5       $	��140��6-   $��30��69   $��Añadir��6E   
���   �
�������
�������6�   5!      � 5$   
   $��0��6   $��2��6!   $��Center=�65   .+�5%      � -   5        $��progressBar��5%      $��30q�6-   $��Center=�69   $��Center=�6V   $	��350��6q   $��65��6}    � Minimum$ 0Q�6�    � Maximum$	 100Q�6�    � Value$ 0Q�6�   
������
��� � �6�   5&      � 5)   
   $��40,20,20,20q�6   $��50��6*   $��40��65   $��0��6A   $��1��6N   $��Center=�6^   .+�5+      '  !MaterialDesignThemes.Wpf.PackIcon  -   5        $��GreenCheckIcon��5+   &   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$! CheckboxMarkedCircleOutline=�6<   
��� � �$��25��6r   $��25��6}   $��10q�6�   $��Center=�6�   5,      �� 5/   
   $��Definición de Función��6   $��1��62   $��3��6?   $��0��6P   $��10q�6`      groupBoxHeader#��[  6l   .��50      �� $��Center=�6   $	��350��65   $��	0,0,-10,0q�6A   � 52      $��1��6   $��0��6)   $��10q�69   .+�55      � $��60��6    .+�56      �� $��5q�6    $��	Función:��6+   �� 57      -   5        $��FunctionComboBox��57   #   $	��240��6;   58      � 5;      $��2��6    $��0��6-   .+�5<      �� $��5q�6    $��Nombre:��6+   $��31��6=   �� 5=      
���   �$��0,0,0,1q�65   $	��240��6O   $��20��6[   ._�5>      ��  �� Orientation$ 
Horizontal=�6)   $	��260��6B   $��20��6N   .+�5?   "   �� -   5        $��NameTextBox��5?   *     placeHolder#��[ 6=   
 � Tag$ Name of customer��6b   $	��260��6y   $��0,0,0,-3q�6�   5@      5A      5B      5D      5E      5F      �� 5I   
   #��[  6   $��Definición de Parametros��6;   $��1��6]   $��3��6j   $��1��6{   $��10q�6�   .��5J      �� $��Center=�6   $��61,0,70,-12q�65   $	��209��6J   � 5L      $��1��6    $��1��6-   $	��180��6=   $��Center=�6J   $	��200��6g   $��10 0 0 0q�6s   .+�5O      � $	��180��6$   $��60��60   .+�5P   "   �� $��5q�6(   $��A:��63   $��31��6@   $��25��6L   $
��Left=�6W   "   WinMaths.NumericTextBoxClass  5Q   "   -   5        	  Name$	 ParamATextBox��5Q   =   
������ $	��130��6m   $��25��6y   $��5q�6�   $	��Top=�6�   $��1,1,1,1q�6�   5R      � 5U      $	��180��6$   $��50��60   .+�5V      �� $��5q�6$   $��B:��6/   $��31��6<   $��25��6H   $
��Left=�6S     5W      -   5        $	 ParamBTextBox��5W   9   
������ $	��130��6i   $��25��6u   $��5q�6�   $	��Top=�6�   $��1,1,1,1q�6�   5X      � 5[      -   5        $��ParamCWrapPanel��5[   $   $	��180��6;   $��50��6G   .+�5\      �� $��5q�6$   $��C:��6/   $��31��6<   $��25��6H   $
��Left=�6S     5]      -	   5        $	 ParamCTextBox��5]   9   
������ $	��130��6i   $��25��6u   $��5q�6�   $	��Top=�6�   $��1,1,1,1q�6�   5^      5`      5a      5b      �� 5e   
   $��
Apariencia��6   $��4��6'   $��3��64   $��0��6E   $��2��6V   $��10q�6j   #��[  6v   .��5f      �� $��Center=�6   � 5i      $	��250��6$   $��50��60   .+�5j      �� $��5q�6$   $��Color:��6/   $��31��6@   $��40��6L   $
��Left=�6W   #  Xceed.Wpf.Toolkit.ColorPicker  5k      -
   5        $��ColorSelectionColorPicker��5k   /   $��5q�6P   $	��130��6[   
   SelectedColor$

 BlueX�6g   5l      5n      5o      5q      5r      