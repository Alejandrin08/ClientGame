using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using ChineseCheckersClient.UserControls;
using System;
using System.Collections.Generic;
using System.Globalization;
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
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window, ServiceReference.IUserSessionCallback {

        public Login() {
            InitializeComponent();
        }

        private void Register(object sender, MouseButtonEventArgs e) {
            RegisterUser registerUser = new RegisterUser();
            registerUser.Show();
            this.Close();
        }

        private void ForgotPassword(object sender, MouseButtonEventArgs e) {
            ChangePassword changePassword = new ChangePassword();
            changePassword.Show();
            this.Close();
        }

        private void SignIn(object sender, RoutedEventArgs e) {
            SingletonClass.Instance.GamertagUser = textBoxGamertag.Text;
            UserModel userModel = new UserModel {
                Gamertag = textBoxGamertag.Text,
                Password = passwordBoxPassword.Password
            };
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                int validationUser = client.ValidateUser(userModel);

                if (string.IsNullOrEmpty(textBoxGamertag.Text) || string.IsNullOrEmpty(passwordBoxPassword.Password)) {
                    MessageBox.Show(Properties.Resources.CamposVacios);
                } else {
                    if (validationUser > 0) {
                        ServiceReference.IUser user = new ServiceReference.UserClient();
                        int idUser = user.GetId(textBoxGamertag.Text);
                        SingletonClass.Instance.IdUser = idUser;
                        ServiceReference.IUserSession userSession = new ServiceReference.UserSessionClient(new InstanceContext(this));
                        userSession.GetSessionPlayer(idUser);
                        UserMenu userMenu = new UserMenu();
                        userMenu.Show();
                        this.Close();
                    } else {
                        MessageBox.Show(Properties.Resources.UsuarioInvalido);
                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        private void LanguajeSelected(object sender, SelectionChangedEventArgs e) {
            if (cbBoxLanguaje.SelectedItem is ComboBoxItem selectedItem) {
                string selectedLanguage = selectedItem.Tag.ToString();
                Thread.CurrentThread.CurrentCulture = new CultureInfo(selectedLanguage);
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(selectedLanguage);

                UpdateUIResources();
                ChangeLanguaje.OnLanguajeChanged();
            }
        }

        private void UpdateUIResources() {
            textBlockLogin.Text = Properties.Resources.InicioSesion;
            textBlockName.Text = Properties.Resources.Nombre;
            textBlockPassword.Text = Properties.Resources.Contraseña;
            textBlockForgotPassword.Text = Properties.Resources.OlvideContraseña;
            buttonLogin.Content = Properties.Resources.IniciarSesion;
            textBlockNewInGame.Text = Properties.Resources.NuevoJuego;
            textBlockRegister.Text = Properties.Resources.Registrarse;
            textBlockLanguaje.Text = Properties.Resources.Idioma;
            textBlockPlayGuest.Text = Properties.Resources.JugarInvitado;
            textBlockGuest.Text = Properties.Resources.IngreseCodigo;
            buttonPlayGuest.Content = Properties.Resources.Validar;
        }

        private void LoginPasswordBox(object sender, KeyEventArgs e) {
            if (e.Key == Key.Enter) {
                SignIn(sender, e);
            }
        }

        private void LoginGamertagBox(object sender, KeyEventArgs e) {
            if (e.Key == Key.Enter) {
                SignIn(sender, e);
            }
        }

        public void GetSessionPlayerCallback() {

        }

        private void PlayAsGuest(object sender, MouseButtonEventArgs e) {
            if (borderGuest.Visibility == Visibility.Hidden) {
                borderGuest.Visibility = Visibility.Visible;
            } else {
                borderGuest.Visibility = Visibility.Hidden;
            }
        }

        private void ValidateRoom(object sender, RoutedEventArgs e) {
            ServiceReference.IRoom clientRoom = new ServiceReference.RoomClient();
            string enterIdRoom = textBoxPlayGuest.Text;
            if (clientRoom.ValidateRoom(enterIdRoom) == 1) {
                SingletonClass.Instance.IdRoom = enterIdRoom;
                SingletonClass.Instance.GamertagUser = "Invitado";
                Lobby lobby = new Lobby();
                lobby.Show();
                this.Close();
            } else {
                MessageBox.Show(Properties.Resources.CodigoInvalido);
            }
        }
    }
}