using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.ServiceModel;
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
    public partial class Friend : UserControl, INotifyPropertyChanged {

        public Friend() {
            InitializeComponent();
            this.DataContext = this;
        }

        private string _gamertag;
        private string _pathFile;
        private bool _isOnline;

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

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName) {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private void InviteFriend(object sender, MouseButtonEventArgs e) {
            try {
                ServiceReference.IFriendship clientFriendship = new ServiceReference.FriendshipClient();
                ServiceReference.IUser clientUser = new ServiceReference.UserClient();

                int idFriend = clientUser.GetId(this.Gamertag);
                FriendshipModel friendship = new FriendshipModel() {
                    IdUser = SingletonClass.Instance.IdUser,
                    IdFriend = idFriend,
                    RequestStatus = StatusOfNotification.Pending.ToString(),
                    TypeNotification = Notification.GameRequest.ToString(),
                    IdRoom = SingletonClass.Instance.IdRoom
                };
                clientFriendship.AddFriendPlayer(friendship);
                MessageBox.Show(Properties.Resources.InvitacionEnviada);
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }
    }
}