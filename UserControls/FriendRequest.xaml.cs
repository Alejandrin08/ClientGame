using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using ChineseCheckersClient.Validations;
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
    /// Lógica de interacción para FriendRequest.xaml
    /// </summary>
    public partial class FriendRequest : UserControl, INotifyPropertyChanged {
        public FriendRequest() {
            InitializeComponent();
            this.DataContext = this;
        }

        private string _gamertag;
        private string _pathFile;

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

        protected virtual void OnPropertyChanged(string propertyName) {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
          
        public event PropertyChangedEventHandler PropertyChanged;

        private void SendRequest(object sender, MouseButtonEventArgs e) {
            try {
                ServiceReference.IUser clientUser = new ServiceReference.UserClient();
                ServiceReference.IFriendship clientFriendship = new ServiceReference.FriendshipClient();

                int idFriend = clientUser.GetId(SingletonClass.Instance.GamertagFriend);
                SingletonClass.Instance.IdFriend = idFriend;
                FriendRequestDuplicityValidationRule friendRequestDuplicityValidationRule = new FriendRequestDuplicityValidationRule();
                if (!friendRequestDuplicityValidationRule.Validate(this.Gamertag, null).IsValid) {
                    MessageBox.Show(Properties.Resources.SolicitudAmistadDuplicado);
                } else {
                    Email email = new Email();
                    string address = clientUser.GetEmail(SingletonClass.Instance.GamertagFriend);
                    string text = email.FormatSendRequest(SingletonClass.Instance.GamertagUser);
                    email.SendEmail(Properties.Resources.SolicitudAmistad, text, address);
                    MessageBox.Show(Properties.Resources.SolicitudEnviada);
                    FriendshipModel friendship = new FriendshipModel() {
                        IdUser = SingletonClass.Instance.IdUser,
                        IdFriend = idFriend,
                        RequestStatus = StatusOfNotification.Pending.ToString(),
                        TypeNotification = Notification.FriendRequest.ToString()
                    };
                    clientFriendship.AddFriendPlayer(friendship);
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }
    }
}
