using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
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
using TransportLinesLib;

namespace WpfApp2_MVVM
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private ViewModel1 viewModel1;

        public MainWindow()
        {
            // variable d'environnement CurrentCulture -> en-US pour que la virgule décimale soit en point lorsqu'on convertit un integer en string (appelle à l'api Métro)
            Thread.CurrentThread.CurrentCulture = CultureInfo.GetCultureInfo("en-US");

            InitializeComponent();

            viewModel1 = new ViewModel1();
            base.DataContext = viewModel1;


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            viewModel1.appelSearchLineStop();
            //tls.searchLineStop(Convert.ToDouble(lat.Text), Convert.ToDouble(lon.Text), Convert.ToInt16(dist.Text));
            //gridtls.ItemsSource = tls.lStops;

        }

        private void gridtls_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var grid = sender as DataGrid;
            if (grid.SelectedItems.Count > 0)
            {
                var selected = grid.SelectedItems[0] as LineStop;

                gridtl.ItemsSource = selected.tlines;
                tlsName.Text = selected.id + " " + selected.name;
            }
            else
            {
                gridtl.ItemsSource = null;
                tlsName.Text = null;
            }
        }

    }
}
