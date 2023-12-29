using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using ChineseCheckersClient.UserControls;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using System.Windows.Shapes;

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para Lobby.xaml
    /// </summary>
    public partial class Lobby : Window, ServiceReference.IUsersManagerCallback, ServiceReference.IPlayersRoomCallback, ServiceReference.IBoardCallback {

        public Lobby() {
            InitializeComponent();
            ServiceReference.IUsersManager clientUsers = new ServiceReference.UsersManagerClient(new InstanceContext(this));
            ServiceReference.IPlayersRoom clientRoom = new ServiceReference.PlayersRoomClient(new InstanceContext(this));
            ServiceReference.IBoard board = new ServiceReference.BoardClient(new InstanceContext(this));

            board.AddPlayerInBoard(SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);
            clientUsers.GetFriends(SingletonClass.Instance.GamertagUser);
            clientRoom.AddPlayerRoom(SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);
            clientRoom.GetPlayersRoom(SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);
        }

        private void BackWindow(object sender, MouseButtonEventArgs e) {
            ServiceReference.IRoom client = new ServiceReference.RoomClient();
            ServiceReference.IPlayersRoom playersRoom = new ServiceReference.PlayersRoomClient(new InstanceContext(this));
            client.RemovePlayer(SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);
            playersRoom.RemovePlayerRoom(SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);

            playersRoom.GetPlayersRoom(SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);
            UserMenu userMenu = new UserMenu();
            userMenu.Show();
            this.Close();
        }    

        public void GetFriendsCallback(Dictionary<string, Tuple<string, bool>> stateFriend) {
            try {
                Application.Current.Dispatcher.Invoke(() => {
                    var friendsList = new List<Friend>();

                    foreach (var friend in stateFriend) {
                        var friendPlayer = new Friend { 
                            Gamertag = friend.Key,
                            PathFile = $"/Resources/Images/{friend.Value.Item1}",
                            IsOnline = friend.Value.Item2,
                        };
                        friendPlayer.imageAddFriend.Visibility = Visibility.Visible;
                        if (!friend.Value.Item2) {
                            friendPlayer.imageAddFriend.IsEnabled = false;
                        }
                        friendsList.Add(friendPlayer);
                    }
                    if (FindName("friendListLobby") is FriendListLobby friendListControl) {
                        friendListControl.FriendsListLobby = friendsList;
                        friendListControl.Visibility = Visibility.Visible;
                    }
                });
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        public void GetPlayersRoomCallback(string[] playersInRoom) {   
            try {
                ServiceReference.IUser clientUser = new ServiceReference.UserClient();
                Application.Current.Dispatcher.Invoke(() => {
                    var playersList = new ObservableCollection<FriendReport>();
                    foreach (var player in playersInRoom) {
                        bool isReport = true;
                        string gamertag = player; 
                        string pathFile = clientUser.GetPlayerImage(player);
                        if (player.Equals(SingletonClass.Instance.GamertagUser)) {
                            isReport = false;
                            gamertag = Properties.Resources.Tu;
                        }
                        var playerRoom = new FriendReport {                
                            Gamertag = gamertag,
                            PathFile = pathFile,
                            IsReport = isReport,
                        };
                        playersList.Add(playerRoom);
                    }
                    if (FindName("listPlayersReport") is FriendListLobby playerListControl) {
                        playerListControl.FriendsListLobbyReport = playersList;
                        playerListControl.Visibility = Visibility.Visible;
                    }
                });
            } catch (CommunicationException ex) { 
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        private void UpdateFriendList(object sender, MouseButtonEventArgs e) {
            ServiceReference.IUsersManager clientUsers = new ServiceReference.UsersManagerClient(new InstanceContext(this));
            clientUsers.GetFriends(SingletonClass.Instance.GamertagUser);
        }

        private void AddGuest(object sender, MouseButtonEventArgs e) {
            string idRoom = SingletonClass.Instance.IdRoom;
            MessageBox.Show(Properties.Resources.CompartaCodigo + ": " + idRoom);
        }

        public void SendToBoardCallback() {
            BoardGame boardGame = new BoardGame();
            boardGame.Show();
            this.Close();
        }

        private void StartGame(object sender, RoutedEventArgs e) {
            ServiceReference.IBoard board = new ServiceReference.BoardClient(new InstanceContext(this));
            if (board.ValidateBoardRoom(SingletonClass.Instance.IdRoom)) {
                ServiceReference.IBoard client = new ServiceReference.BoardClient(new InstanceContext(this));
                client.SendToBoard(SingletonClass.Instance.IdRoom);
            } else {
                MessageBox.Show("minimo ocupas dos jugadores");
            }
        }

        private void ExitWindow(object sender, MouseButtonEventArgs e) {
            ServiceReference.IRoom clientRoom = new ServiceReference.RoomClient();
            ServiceReference.IPlayersRoom playersRoom = new ServiceReference.PlayersRoomClient(new InstanceContext(this));

            playersRoom.RemovePlayerRoom(SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);
            clientRoom.RemovePlayer(SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);

            playersRoom.GetPlayersRoom(SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);
            Login login = new Login();
            login.Show();
            this.Close();
        }
    }
}