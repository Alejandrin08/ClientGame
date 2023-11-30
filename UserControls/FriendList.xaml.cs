using ChineseCheckersClient.Logic;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ChineseCheckersClient.UserControls {
    /// <summary>
    /// Lógica de interacción para FriendList.xaml
    /// </summary>
    public partial class FriendList : UserControl, ServiceReference.IUsersManagerCallback {

        private SemaphoreSlim _semaphore = new SemaphoreSlim(1, 1);

        public FriendList() {
            InitializeComponent();
            IsVisibleChanged += IsVisibleFriendList;
        }

        public List<Friend> FriendsList {
            get { return (List<Friend>)listOfFriends.ItemsSource; }
            set { listOfFriends.ItemsSource = value; } 
        }

        private void ShowFriendList(object sender, MouseButtonEventArgs e) {
            textBoxFoundGamertag.Visibility = Visibility.Collapsed;
            imageFindFriend.Visibility = Visibility.Collapsed;
            try {
                ServiceReference.IUsersManager client = new ServiceReference.UsersManagerClient(new InstanceContext(this));
                client.GetFriends(SingletonClass.Instance.GamertagUser);
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        private void ShowFindFriend(object sender, MouseButtonEventArgs e) {
            if (textBoxFoundGamertag.Visibility == Visibility.Collapsed) {
                textBoxFoundGamertag.Visibility = Visibility.Visible;
                imageFindFriend.Visibility = Visibility.Visible;
                listOfFriends.ItemsSource = null;
                listOfFriends.Items.Clear();
            } else {
                textBoxFoundGamertag.Visibility = Visibility.Collapsed;
                imageFindFriend.Visibility = Visibility.Collapsed;
            }
        }

        public void GetFriendsCallback(Dictionary<string, Tuple<string, bool>> stateFriend) {
            listOfFriends.ItemsSource = null;
            listOfFriends.Items.Clear();
            try {
                Application.Current.Dispatcher.Invoke(() => {
                    _semaphore.Wait();
                    try {
                        var friendsList = new List<Friend>();
                        foreach (var friend in stateFriend) {
                            var friendPlayer = new Friend {
                                Gamertag = friend.Key,
                                PathFile = $"/Resources/Images/{friend.Value.Item1}",
                                IsOnline = friend.Value.Item2
                            };
                            friendsList.Add(friendPlayer);
                        }
                        FriendsList = friendsList;
                        Visibility = Visibility.Visible;
                    } finally {
                        _semaphore.Release();
                    }
                });
            } catch (CommunicationException ex) {
                MessageBox.Show(ex.Message);
            }
        }

        private void TxtMessageGotFocus(object sender, RoutedEventArgs e) {
            if (textBoxFoundGamertag.Text == Properties.Resources.BuscarAmigo) {
                textBoxFoundGamertag.Text = string.Empty;
            }
        }

        private void TxtMessageLostFocus(object sender, RoutedEventArgs e) {
            if (string.IsNullOrWhiteSpace(textBoxFoundGamertag.Text)) {
                textBoxFoundGamertag.Text = Properties.Resources.BuscarAmigo;
            }
        }

        private void IsVisibleFriendList(object sender, DependencyPropertyChangedEventArgs e) {
            listOfFriends.ItemsSource = null;
            listOfFriends.Items.Clear();
        }

        private void FindFriend(object sender, MouseButtonEventArgs e) {
            listOfFriends.ItemsSource = null;
            listOfFriends.Items.Clear();
            SingletonClass.Instance.GamertagFriend = textBoxFoundGamertag.Text;
            Application.Current.Dispatcher.Invoke(() => {
                _semaphore.Wait();
                try {
                    ServiceReference.IUser client = new ServiceReference.UserClient();
                    string gamertagToFound = client.FindGamertag(SingletonClass.Instance.GamertagUser, textBoxFoundGamertag.Text);
                    if (string.IsNullOrEmpty(gamertagToFound)) {
                        MessageBox.Show(Properties.Resources.GamertagNoEncontrado);
                    } else {
                        AddFriendRequest(gamertagToFound, client.GetPlayerImage(gamertagToFound));
                    }
                } catch (CommunicationException ex) {
                    MessageBox.Show($"Error de comunicación: {ex.Message}");
                } finally {
                    _semaphore.Release();
                }
            });
        }

        public void AddFriendRequest(string gamertag, string pathFile) {
            var friendControl = new FriendRequest {
                Gamertag = gamertag,
                PathFile = pathFile,
            };
            this.listOfFriends.Items.Add(friendControl);
            this.listOfFriends.Items.Refresh();
            this.listOfFriends.InvalidateVisual();
        }
    }
}
