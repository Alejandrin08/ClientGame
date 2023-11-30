using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using ChineseCheckersClient.View;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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

namespace ChineseCheckersClient.UserControls {
    /// <summary>
    /// Lógica de interacción para Friend.xaml
    /// </summary>
    public partial class FriendReport : UserControl, INotifyPropertyChanged {

        public FriendReport() {
            InitializeComponent();
            this.DataContext = this;
        }

        private string _gamertag;
        private string _pathFile;
        private bool _isOnline;
        private bool _isReport;

        public string Gamertag {
            get { return _gamertag; }
            set {
                if (_gamertag != value) {
                    _gamertag = value;
                    OnPropertyChanged(nameof(Gamertag));
                }
            }
        }

        public string PathFile {
            get { return _pathFile; }
            set {
                if (_pathFile != value) {
                    _pathFile = value;
                    OnPropertyChanged(nameof(PathFile));
                }
            }
        }

        public bool IsOnline {
            get { return _isOnline; }
            set {
                if (_isOnline != value) {
                    _isOnline = value;
                    OnPropertyChanged(nameof(IsOnline));
                }
            }
        }

        public bool IsReport {
            get { return _isReport; }
            set {
                if (_isReport != value) {
                    _isReport = value;
                    OnPropertyChanged(nameof(IsReport));
                }
            }
        }

        private void ReportPlayer(object sender, MouseButtonEventArgs e) {
            string GamertagSelected = this.Gamertag;
            SingletonClass.Instance.GamertagPlayerSelected = GamertagSelected;
            Lobby lobbyWindow = Lobby.GetWindow(this) as Lobby;
            if (lobbyWindow != null) {
                ReportPlayer reportPlayer = new ReportPlayer();
                reportPlayer.Owner = lobbyWindow;
                lobbyWindow.Visibility = Visibility.Hidden;
                reportPlayer.ShowDialog();
                lobbyWindow.Visibility = Visibility.Visible;
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName) {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}