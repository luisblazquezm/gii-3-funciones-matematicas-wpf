﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WinMaths.src.bean;
using WinMaths.src.utils;
using WinMaths.src.viewModels;

namespace WinMaths.src.views
{
    /// <summary>
    /// Lógica de interacción para GraphicTableUI.xaml
    /// </summary>
    public partial class GraphicTableUI : Page
    {
        private ViewModel viewModel;
        private List<Graphic> listOfGraphicsToExport;
        private IOUtils ioUtils;

        public GraphicTableUI(ViewModel vM)
        {
            InitializeComponent();

            this.viewModel = vM;
            this.ioUtils = new IOUtils();
            listOfGraphicsToExport = null;
            
            TableGrid.ItemsSource = viewModel.GetCollectionOfGraphicsVM();
            TableGrid.SelectedCellsChanged += TableGrid_SelectedCellsChanged;

            // Gestión del Botón Dibujar
            DrawGraphicButton.Click += DrawGraphicButton_Click;
            DrawGraphicButton.IsEnabled = false;

            // Gestión del Botón Modificar
            ModifyGraphicButton.Click += ModifyGraphicButton_Click;
            ModifyGraphicButton.IsEnabled = false;

            // Gestión del Botón Eliminar
            DeleteGraphicButton.Click += DeleteGraphicButton_Click;
            DeleteGraphicButton.IsEnabled = false;

            // Gestión del contextMenu
            ExportSelectedFilesMenuOption.Click += ExportFilesMenuOption_Click;
            ExportTableMenuOption.Click += ExportFilesMenuOption_Click;
            ImportTableMenuOption.Click += ImportTableMenuOption_Click;
        }

        private void TableGrid_SelectedCellsChanged(object sender, SelectedCellsChangedEventArgs e)
        {
            if (TableGrid.SelectedIndex != -1) {
                DrawGraphicButton.IsEnabled = true;
                ModifyGraphicButton.IsEnabled = true;
                DeleteGraphicButton.IsEnabled = true;
            } else {
                DrawGraphicButton.IsEnabled = false;
                ModifyGraphicButton.IsEnabled = false;
                DeleteGraphicButton.IsEnabled = false;
            }
        }

        private void DrawGraphicButton_Click(object sender, RoutedEventArgs e)
        {
            List<Graphic> selectedGraphicList = TableGrid.SelectedItems.Cast<Graphic>().ToList();
            if (selectedGraphicList != null)
                viewModel.DrawGraphicVM(selectedGraphicList);
        }

        private void ModifyGraphicButton_Click(object sender, RoutedEventArgs e)
        {
            if (TableGrid.SelectedItems.Count > 1) {
                MessageBox.Show("Por favor, seleccione solo UNA fila para modificar a la vez", "Error: Múltiples filas seleccionadas para modificar", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            } 

            Graphic oldGraph = (Graphic)TableGrid.SelectedItem;
            int idOldGraphic = oldGraph.ID;

            ModificationsWindow modificationsWindow = new ModificationsWindow() { GraphicToModify = oldGraph };

            modificationsWindow.ShowDialog();
            if (false == modificationsWindow.DialogResult)
                return;

            Graphic graphModified = modificationsWindow.GraphicToModify;

            if (graphModified != null)
            {
                graphModified.ID = idOldGraphic;
                bool resultUpdate = viewModel.UpdateGraphicVM(graphModified, oldGraph);
            }
 
        }

        private void DeleteGraphicButton_Click(object sender, RoutedEventArgs e)
        {
            List<Graphic> selectedGraphicList = TableGrid.SelectedItems.Cast<Graphic>().ToList();
            if (selectedGraphicList != null)
                viewModel.DeleteGraphicVM(selectedGraphicList);
        }

        private void ExportFilesMenuOption_Click(object sender, RoutedEventArgs e)
        {
            if (sender == ExportSelectedFilesMenuOption)
                listOfGraphicsToExport = TableGrid.SelectedItems.Cast<Graphic>().ToList();
            else if (sender == ExportTableMenuOption)
                listOfGraphicsToExport = TableGrid.Items.Cast<Graphic>().ToList();

            Microsoft.Win32.SaveFileDialog dlg = new Microsoft.Win32.SaveFileDialog
            {
                FileName = "NuevoArchivo",
                Filter = "XML | *.xml | Binary | *.bin | HTML | *.html"
            };

            bool? result = dlg.ShowDialog();
            if (result == true)
            {
                ioUtils.WriteToFile<Graphic>(dlg.FileName, listOfGraphicsToExport, false);
            }
        }

        private void ImportTableMenuOption_Click(object sender, RoutedEventArgs e)
        {
            Microsoft.Win32.OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog
            {
                Title = "Abrir fichero",
                FileName = "NuevoArchivo",
                DefaultExt = ".xml",
                Filter = "XML | *.xml | Binary | *.bin | Excel | *.xlm",
                Multiselect = false
            };

            bool? result = dlg.ShowDialog();
            if (result == true)
            {
                List<Graphic> g = ioUtils.ReadFromFile<Graphic>(dlg.FileName);
                bool ja = viewModel.ImportListVM(g);
            }
        }

        
    }
}
