   M S B A M L   `   `   `  ����C  ?WinMaths, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WinMaths.src.viewsWinMaths.src.views  5      '    !WinMaths.src.views.GraphicTableUI   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      ,local clr-namespace:WinMaths.src.views  5        N� Title$  GraphicTableUI��5
      .��5      �� $	��800��6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��	TableGrid��5      $	��330��6$   $	��680��61      AutoGenerateColumns .     CanUserAddRows .     CanUserDeleteRows .    SelectionMode$ Extended=�6�      SelectionUnit$ FullRow=�6�   $��10,20,106,10q�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 200 6%      Header$ Nombre��5   %   	   
IsReadOnly	 . 1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 5   %   ��  �� Mode$ TwoWay=� �� Path$
 Name�  5      $	 200 6%   $ Función��5   %   	 . 
 5   %   �� $ TwoWay=�$ FunctionToString�4  .System.Windows.Controls.DataGridTemplateColumn  5      $	 170 6)   $ Color��65      CellTemplate 5      �� 5       �� DataType$ Graphic��6'   .R�5      #  Xceed.Wpf.Toolkit.ColorPicker   J� IsHitTestVisible .     SelectedColor 6H   �� $ TwoWay=�$ GraphicColor�5       5"       � ContextMenu 5'      �� 5(      .@�5)      m� -   5        $ ��ExportTableExcelMenuOption��5)      $��Exportar tabla a Excel��6A   m� 5*      -   5        $#��ExportSelectedFilesMenuOption��5*      $%��Exportar archivos seleccionados��6D   m� 5+      -   5        $��ExportTableMenuOption��5+      $!��Exportar todos los archivos��6<   m� 5,      -   5        $��ImportTableMenuOption��5,      $��Importar archivos��6<   5-      50      �� 53   
   $��65��6    �� Orientation$ 
Horizontal=�6!   $��
10,0,106,0q�6:   .+�54      �� -   5        $��DrawGraphicButton��54      $��Dibujar��6.   $	��180��6@   $
��Auto��6L   $
��Left=�6[   $��	0,10,0,28q�6v   
�������
���   �
�������6�   �� 55      -   5        $��ModifyGraphicButton��55      $��	Modificar��60   $	��161��6D   $
��Auto��6P   $��Center=�6_   $��
80,10,0,28q�6|   
�������
���   �
�������6�   �� 56      -   5        $��DeleteGraphicButton��56      $��Eliminar��60   $	��157��6C   $
��Auto��6O   $��Right=�6]   $��90,10,40,28q�6y   
�������
���   �
�������6�   57      59      5:      