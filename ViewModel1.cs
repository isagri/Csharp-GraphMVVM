using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TransportLinesLib;

namespace WpfApp2_MVVM
{
    public class ViewModel1 : INotifyPropertyChanged
    {
        private Double lat = 5.709360123;
        private Double lon = 45.1764946;
        private int dist = 400;

        public double Lat { get => lat; set => lat = value; }
        public double Lon { get => lon; set => lon = value; }
        public int Dist { get => dist; set => dist = value; }

        public ObservableCollection<LineStop> LineStopsVM { get; set; }

        TransportLineStop tls;

        public event PropertyChangedEventHandler PropertyChanged;

        public ViewModel1()
        {   
            tls = new TransportLineStop();
            //tls.searchLineStop(Convert.ToDouble(lat.Text), Convert.ToDouble(lon.Text), Convert.ToInt16(dist.Text));
            LineStopsVM = new ObservableCollection<LineStop>();
            appelSearchLineStop();
        }

        public void appelSearchLineStop()
        {
            tls.searchLineStop(Lat, Lon, Dist);

            LineStopsVM.Clear();
            foreach (LineStop lstop in tls.lStops)
            {
                LineStopsVM.Add(lstop);
            }
        }

    }
}
