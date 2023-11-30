using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using ChineseCheckersClient.UserControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
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
using System.Windows.Shapes;

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para UserMenu.xaml
    /// </summary>
    public partial class UserMenu : Window, ServiceReference.IUserFriendRequestCallback {

        private bool isVisible = false;
        
        public UserMenu() {
            InitializeComponent();

            ChangeLanguaje.LanguajeChanged += LanguajeChangedEventHandler;
            string gamertag = SingletonClass.Instance.GamertagUser;
            textBlockGamertag.Text = gamertag;
            imageProfile.Source = App.DisplayImageProfile();
        }

        private void Exit(object sender, RoutedEventArgs e) {
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                client.LogoutUser(SingletonClass.Instance.IdUser);
                App.Current.Shutdown();
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        private void Statistics(object sender, RoutedEventArgs e) {
            Statistics statistics = new Statistics();
            statistics.Show();
            this.Close();
        }

        private void Options(object sender, RoutedEventArgs e) {
            Options options = new Options();
            options.Show();
            this.Close();
        }

        private void LanguajeChangedEventHandler(object sender, EventArgs e) {
            UpdateUIResources();
        }

        private void UpdateUIResources() {
            buttonPlay.Content = Properties.Resources.Jugar;
            buttonOptions.Content = Properties.Resources.Opciones;
            buttonStatistics.Content = Properties.Resources.Estadisticas;
            buttonLeave.Content = Properties.Resources.Salir;
            buttonEdit.Content = Properties.Resources.Editar;
            buttonLogOut.Content = Properties.Resources.CerrarSesion;
        }

        private void OpenEditor(object sender, MouseButtonEventArgs e) {
            isVisible = !isVisible;
            stackPanelEditor.Visibility = isVisible ? Visibility.Visible : Visibility.Collapsed;
            borderEditor.Visibility = isVisible ? Visibility.Visible : Visibility.Collapsed;
        }

        private void LogOut(object sender, RoutedEventArgs e) {
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                client.LogoutUser(SingletonClass.Instance.IdUser);
                Login login = new Login();
                login.Show();
                this.Close();
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        private void Play(object sender, RoutedEventArgs e) {
            ServiceReference.IRoom clientRoom = new ServiceReference.RoomClient();
            string idRoom = clientRoom.CreateRoom(SingletonClass.Instance.GamertagUser);
            SingletonClass.Instance.IdRoom = idRoom;
            Lobby lobby = new Lobby();
            lobby.Show();
            this.Close();
        }

        private void EditProfile(object sender, RoutedEventArgs e) {
            EditProfile editProfile = new EditProfile();
            editProfile.Show();
            this.Close();
        }

        private void ImageMouseLeftButtonDown(object sender, MouseButtonEventArgs e) {
            if (friendList.Visibility == Visibility.Collapsed) {
                friendList.Visibility = Visibility.Visible;
            } else {
                friendList.Visibility = Visibility.Collapsed;
            }
        }

        private void ShowNotificationList(object sender, MouseButtonEventArgs e) {
            if (notificationList.Visibility == Visibility.Collapsed) {
                notificationList.Visibility = Visibility.Visible;
                try {
                    ServiceReference.IUserFriendRequest client = new ServiceReference.UserFriendRequestClient(new InstanceContext(this));
                    client.GetFriendRequest(SingletonClass.Instance.IdUser);
                } catch (CommunicationException ex) {
                    MessageBox.Show($"Error de comunicación: {ex.Message}");
                }
            } else {
                notificationList.Visibility = Visibility.Collapsed;
            }
        }

        public void GetFriendRequestCallback(Dictionary<string, (string, string, string)> friendPlayer) {
            try {
                Application.Current.Dispatcher.Invoke(() => {
                    var notification = new List<NotificationFriend>();
                    foreach (var friend in friendPlayer) {
                        string typeNotification = "";
                        if (friend.Value.Item2.Equals(Notification.FriendRequest.ToString())) {
                            typeNotification = Properties.Resources.Solicitud;
                        } else if (friend.Value.Item2.Equals(Notification.GameRequest.ToString())) {
                            typeNotification = Properties.Resources.Invitacion;
                        }
                         
                        var friendNotification = new NotificationFriend {
                            Gamertag = friend.Key,
                            PathFile = $"/Resources/Images/{friend.Value.Item1}",
                            TextMessage = typeNotification,
                            IdRoom = friend.Value.Item3,
                        };
                        SingletonClass.Instance.IdRoom = friendNotification.IdRoom;
                        notification.Add(friendNotification);
                    }
                    if (FindName("notificationList") is NotificationsList notificationFriendControl) {
                        notificationFriendControl.NotificationFriends = notification;
                        notificationFriendControl.Visibility = Visibility.Visible;
                    }
                });
            } catch (CommunicationException ex) {
                MessageBox.Show(ex.Message);
            }
        }
    }
}