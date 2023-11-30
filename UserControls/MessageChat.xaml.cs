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
    /// Lógica de interacción para MessageChat.xaml
    /// </summary>
    public partial class MessageChat : UserControl, INotifyPropertyChanged {
        public MessageChat() {
            InitializeComponent();
            this.DataContext = this;
        }
        private string _gamertag;
        private string _pathFile;
        private bool _imageUser;
        private bool _imageFriend;
        private bool _user;
        private string _message;
        public string Gamertag {
            get { return _gamertag; }
            set {
                if (_gamertag != value) {
                    _gamertag = value;
                    OnPropertyChanged(nameof(Gamertag));
                }
            }
        }
        public string Message {
            get { return _message; }
            set {
                if (_message != value) {
                    _message = value;
                    OnPropertyChanged(nameof(Message));
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
        public bool ImageUser {
            get { return _imageUser; }
            set {
                if (_imageUser != value) {
                    _imageUser = value;
                    OnPropertyChanged(nameof(ImageUser));
                }
            }
        }
        public bool ImageFriend {
            get { return _imageFriend; }
            set {
                if (_imageFriend != value) {
                    _imageFriend = value;
                    OnPropertyChanged(nameof(ImageFriend));
                }
            }
        }
        public bool User {
            get { return _user; }
            set {
                if (_user != value) {
                    _user = value;
                    OnPropertyChanged(nameof(User));
                }
            }
        }
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName) {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}