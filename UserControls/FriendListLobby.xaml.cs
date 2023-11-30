using ChineseCheckersClient.UserControls;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
    /// Lógica de interacción para FriendListLobby.xaml
    /// </summary>
    public partial class FriendListLobby : UserControl {
        public FriendListLobby() {
            InitializeComponent();
        }

        public List<Friend> FriendsListLobby {
            get { return (List<Friend>)listOfFriends.ItemsSource; }
            set { listOfFriends.ItemsSource = value; }
        }

        public ObservableCollection<FriendReport> FriendsListLobbyReport {
            get { return (ObservableCollection<FriendReport>)listOfFriends.ItemsSource; }
            set { listOfFriends.ItemsSource = value; }
        }
    }
}
