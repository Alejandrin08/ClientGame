using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using ChineseCheckersClient.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Channels;
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
    /// Lógica de interacción para NotificationFriend.xaml
    /// </summary>
    public partial class NotificationFriend : UserControl, INotifyPropertyChanged {

        public NotificationFriend() {
            InitializeComponent();
            this.DataContext = this;
        }

        private string _gamertag;
        private string _pathFile;
        private string _textMessage;
        private string _idRoom;

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

        public string TextMessage {
            get { return _textMessage; }
            set {
                if (_textMessage != value) {
                    _textMessage = value;
                    OnPropertyChanged(nameof(TextMessage));
                }
            }
        }

        public string IdRoom {
            get { return _idRoom; }
            set {
                if (_idRoom != value) {
                    _idRoom = value;
                    OnPropertyChanged(nameof(IdRoom));
                }
            }
        }

        private void Accept(object sender, MouseButtonEventArgs e) {
            if (textBlockMessage.Text.Equals(Properties.Resources.Solicitud)) {
                AcceptFriendRequest();
            } else if (textBlockMessage.Text.Equals(Properties.Resources.Invitacion)) {
                AcceptFriendInvitation();
            }
        }

        private void AcceptFriendRequest() {
            try {
                ServiceReference.IFriendship clientFriendship = new ServiceReference.FriendshipClient();
                ServiceReference.IUser clientUser = new ServiceReference.UserClient();

                string gamertagFriendSelected = this.Gamertag;
                int idFriend = clientUser.GetId(gamertagFriendSelected);

                FriendshipModel friendship = new FriendshipModel() {
                    IdUser = SingletonClass.Instance.IdUser,
                    IdFriend = idFriend,
                    RequestStatus = StatusOfNotification.Accepted.ToString(),
                    TypeNotification = Notification.FriendRequest.ToString()
                };

                if (clientFriendship.ValidateFriendRequest(SingletonClass.Instance.IdUser, idFriend, StatusOfNotification.Pending.ToString()) > 0) {
                    clientFriendship.UpdateFriendPlayer(SingletonClass.Instance.IdUser, idFriend, StatusOfNotification.Accepted.ToString());
                    clientFriendship.UpdateFriendPlayer(idFriend, SingletonClass.Instance.IdUser, StatusOfNotification.Accepted.ToString());
                } else {
                    clientFriendship.UpdateFriendPlayer(idFriend, SingletonClass.Instance.IdUser, StatusOfNotification.Accepted.ToString());
                    clientFriendship.AddFriendPlayer(friendship);
                }
                MessageBox.Show(Properties.Resources.SolicitudAceptada + " " + gamertagFriendSelected);
                textBlockAdd.IsEnabled = false;
                textBlockReject.IsEnabled = false;
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        private void AcceptFriendInvitation() {
            ServiceReference.IRoom clientRoom = new ServiceReference.RoomClient();

            int result = clientRoom.ValidateRoom(SingletonClass.Instance.IdRoom);
            if (result == 1) {
                RejectFriendInvitation();
                Lobby lobby = new Lobby();
                lobby.Show();
                Window.GetWindow(this).Close();
            } else {
                RejectFriendInvitation();
                MessageBox.Show("Caduco la invitacion");
            }
        }

        private void Reject(object sender, MouseButtonEventArgs e) {
            if (textBlockMessage.Text.Equals(Properties.Resources.Solicitud)) {
                RejectFriendRequest();
            } else if (textBlockMessage.Text.Equals(Properties.Resources.Invitacion)) {
                RejectFriendInvitation();
            }
        }

        private void RejectFriendRequest() {
            try {
                ServiceReference.IUser clientUser = new ServiceReference.UserClient();
                ServiceReference.IFriendship clientFriendship = new ServiceReference.FriendshipClient();

                string gamertagFriendSelected = this.Gamertag;
                int idFriend = clientUser.GetId(gamertagFriendSelected);

                FriendshipModel friendshipModel = new FriendshipModel {
                    IdUser = idFriend,
                    IdFriend = SingletonClass.Instance.IdUser,
                    TypeNotification = Notification.FriendRequest.ToString()
                };

                clientFriendship.DeleteFriendPlayer(friendshipModel);
                textBlockAdd.IsEnabled = false;
                textBlockReject.IsEnabled = false;
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        private void RejectFriendInvitation() {
            try {
                ServiceReference.IUser clientUser = new ServiceReference.UserClient();
                ServiceReference.IFriendship clientFriendship = new ServiceReference.FriendshipClient();

                string gamertagFriendSelected = this.Gamertag;
                int idFriend = clientUser.GetId(gamertagFriendSelected);

                FriendshipModel friendshipModel = new FriendshipModel {
                    IdUser = idFriend,
                    IdFriend = SingletonClass.Instance.IdUser,
                    TypeNotification = Notification.GameRequest.ToString()
                };

                clientFriendship.DeleteFriendPlayer(friendshipModel);
                textBlockAdd.IsEnabled = false;
                textBlockReject.IsEnabled = false;
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName) {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}