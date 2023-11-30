using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using System;
using System.Collections.Generic;
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
using static System.Net.Mime.MediaTypeNames;

namespace ChineseCheckersClient.UserControls {
    /// <summary>
    /// Lógica de interacción para Chat.xaml
    /// </summary>
    public partial class Chat : UserControl, ServiceReference.IMessageCallback {
        public Chat() {
            InitializeComponent();
            ServiceReference.IMessage client = new ServiceReference.MessageClient(new InstanceContext(this));
            client.AddPlayer(SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);
        }

        private void SendMessage(object sender, MouseButtonEventArgs e) {
            ProcessSendMessage();
        }

        private void ProcessSendMessage() {
            string message = txtMessage.Text;
            if (message != Properties.Resources.EscribeMensaje && !string.IsNullOrWhiteSpace(message)) {
                ServiceReference.IMessage client = new ServiceReference.MessageClient(new InstanceContext(this));
                client.SendMessage(message, SingletonClass.Instance.GamertagUser, SingletonClass.Instance.IdRoom);
                txtMessage.Clear();
            }
        }

        public void SendMessageCallback(string message, string gamertag) {
            MessageChat messageChat = new MessageChat();
            messageChat.Gamertag = gamertag;
            messageChat.Message = message;
            messageChat.PathFile = GetImageProfile(gamertag);
            if (gamertag == SingletonClass.Instance.GamertagUser) {
                messageChat.User = true;
                messageChat.ImageUser = true;
                messageChat.HorizontalAlignment = HorizontalAlignment.Right;
            } else {
                messageChat.User = false;
                messageChat.ImageFriend = true;
                messageChat.HorizontalAlignment = HorizontalAlignment.Left;
            }
            stackPanelChat.Children.Add(messageChat);
            scrollViewerChat.ScrollToBottom();
        }

        public string GetImageProfile(string gamertag) {
            ServiceReference.IUser client = new ServiceReference.UserClient();
            UserModel userModel = client.InfoUser(gamertag);
            string ImageProfile = "/Resources/Images/" + userModel.ImageProfile;
            return ImageProfile;
        }

        private void TxtMessageGotFocus(object sender, RoutedEventArgs e) {
            if (txtMessage.Text == Properties.Resources.EscribeMensaje) {
                txtMessage.Text = string.Empty;
            }
        }

        private void TxtMessageLostFocus(object sender, RoutedEventArgs e) {
            if (string.IsNullOrWhiteSpace(txtMessage.Text)) {
                txtMessage.Text = Properties.Resources.EscribeMensaje;
            }
        }

        private void SendMessageTextBox(object sender, KeyEventArgs e) {
            if (e.Key == Key.Enter) {
                ProcessSendMessage();
            }
        }
    }
}