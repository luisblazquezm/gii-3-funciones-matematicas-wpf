   M S B A M L   `   `   `  ����C  ?WinMaths, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WinMaths.src.viewsWinMaths.src.views  5   	   *    $WinMaths.src.views.PreferencesMenuUI   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:WinMaths.src.views     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  PreferencesMenuUI��5	   	   $	��500��6#   $	��780��60    � 
ResizeMode$ NoResize=�6<   
������� � WindowStyle$
 None=�6e    � 	Resources 5         MenuOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	MenuClose��%�  &	        &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 60Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 60Q�69   5      5      5       � Triggers 5      :� 5   
   	 :� RoutedEvent$	 ButtonBase.Click��6   
 :� 
SourceName$
 ButtonOpenMenu��66   .[�5      �� #��[  6   5      :� 5   
   $	 ButtonBase.Click��6   $
 ButtonCloseMenu��66   .[�5       �� #��[ 6   5!      .��5$      � 
�������.+�5'   
   � $��60��6   $	��Top=�6   ���	#FF2045A8.+�5(      �� $��Preferencias��6   $��Center=�6,   $��Center=�6I   $��22(�6d   5)       � 5+   
   -   5          �Name$ PreferencesMenu��5+      $��	65,60,0,0q�6)   � 5.   
   -   5         �Name$ GridMenu��5.      $��60��6"   $
��Left=�6-   ���	#FF1D2A64.+�5/      �� .+�50      � $	��150��6   
�������.+�51      �� -   5         ��Name$ ButtonCloseMenu��51      $��60��66   $��60��6A   $	��Top=�6z   $��Right=�6�   $y�	Collapsed=�6�   ��6M   Z� ��6c   Z� .��52      '  !MaterialDesignThemes.Wpf.PackIcon  ���	#FF1D2A64�  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowLeft=�6I   $��25��6Z   $��25��6e   53      �� 54      -   5        $ ButtonOpenMenu��54      $��60��65   $��60��6@   $	��Top=�6y   $��Right=�6�   ��6L   Z� ��6b   Z� .��55        ���	#FF1D2A64$
 Menu=�6I   $��25��6U   $��25��6`   56      57      �� 58      $��Disabled=�6   ���	#FF2045A8.@�59      �� -   5        $��60��59   #   .��5:      ��  �� Orientation$ 
Horizontal=�6%   .+�5;        -   5        $ Create=�5;   6   $��25��6D   $��25��6O   $��10q�6[   $��Center=�6g   6�   �� 5<      $��Definicion de Gráfica��6(   $��Center=�6E   $��20 10q�6`   5=      5>      �� 5?      -   5        $��60��5?   #   .��5@      �� $ 
Horizontal=�6%   .+�5A        -	   5        $ 
TableLarge=�5A   6   $��25��6H   $��25��6S   $��10q�6_   $��Center=�6k   6�   �� 5B      $��Tabla de Gráficas��6(   $��Center=�6A   $��20 10q�6\   5C      5D      5E      5F      5G      5I      5J      