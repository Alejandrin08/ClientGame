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
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para App.xaml
    /// </summary>
    public partial class App : Application {

        public App() {
            Login login = new Login();
            login.Show();
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

        public static BitmapImage DisplayImageProfileReport() {
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                string path = client.GetPlayerImage(SingletonClass.Instance.GamertagPlayerSelected);
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

        public static void FadeIn(Grid grid, double durationInSeconds) {
            DoubleAnimation animation = new DoubleAnimation {
                From = 0,
                To = 1,
                Duration = TimeSpan.FromSeconds(durationInSeconds)
            };

            grid.BeginAnimation(UIElement.OpacityProperty, animation);
        }
    }
}
