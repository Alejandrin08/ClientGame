using ChineseCheckersClient.Logic;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Linq;
using System.ServiceModel;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para App.xaml
    /// </summary>
    public partial class App : Application {

        public static MusicPlayer MusicPlayer { get; set; }

        public App() {
            Login login = new Login();
            login.Show();

            MusicPlayer = new MusicPlayer("/Resources/Music/backgroundTheme.mp3");
            MusicPlayer.Play();
        }

        protected override void OnExit(ExitEventArgs e) {
            MusicPlayer.Stop();
            base.OnExit(e);
        }

        public static BitmapImage DisplayImageProfile() {
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                string path = client.GetPlayerImage(SingletonClass.Instance.GamertagUser);
                BitmapImage bitmap = new BitmapImage();
                bitmap.BeginInit();
                bitmap.UriSource = new Uri(@path, UriKind.RelativeOrAbsolute);
                bitmap.EndInit();
                return bitmap;
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
                return null;
            }
        }
    }
}
