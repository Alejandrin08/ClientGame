using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using ChineseCheckersClient.UserControls;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Security.Cryptography;
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
            App.FadeIn(grid, 0.25);
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
            ServiceReference.IUser client = new ServiceReference.UserClient();
            int idUser = client.GetId(textBoxGamertag.Text);

            if (string.IsNullOrEmpty(textBoxGamertag.Text) || string.IsNullOrEmpty(passwordBoxPassword.Password)) {
                MessageBox.Show(Properties.Resources.CamposVacios);
            } else {
                if (ValidateUserEnabled() == 1) {
                    LoginUser();
                } else {
                    ServiceReference.IReport clientReport = new ServiceReference.ReportClient();
                    MessageBox.Show("Usuario bloqueado, tu cuenta se reestablecerá: " + clientReport.GetDateReport(idUser));
                }
            }
        }

        private int ValidateUserEnabled() {
            int enabled = 1;
            ServiceReference.IUser client = new ServiceReference.UserClient();
            int idUser = client.GetId(textBoxGamertag.Text);
            ServiceReference.IReport clientReport = new ServiceReference.ReportClient();
            if (clientReport.GetNumReports(idUser) > 2) {
                DateTime reportDate = clientReport.GetDateReport(idUser);
                DateTime currentDate = DateTime.Now;
                if (currentDate >= reportDate) {
                    clientReport.DeleteReport(idUser);
                } else {
                    enabled = 0;
                }
            }
            return enabled;
        }

        private void LoginUser() {
            SingletonClass.Instance.GamertagUser = textBoxGamertag.Text;
            UserModel userModel = new UserModel {
                Gamertag = textBoxGamertag.Text,
                Password = passwordBoxPassword.Password
            };
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                int validationUser = client.ValidateUser(userModel);
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
                GenerateGuest();
                BlockGuestUI();
            } else {
                MessageBox.Show(Properties.Resources.CodigoInvalido);
            }
        }

        private void GenerateGuest() {
            SingletonClass.Instance.GamertagUser = GenerateUniqueIdentifier();
            SingletonClass.Instance.ImageProfile = "catPixelArt.png";
        }

        private void BlockGuestUI() {
            Lobby lobby = new Lobby();

            lobby.textBlockAddGuest.Visibility = Visibility.Hidden;
            lobby.imageExit.Visibility = Visibility.Visible;
            lobby.imageBack.Visibility = Visibility.Hidden;
            lobby.buttonStartGame.IsEnabled = false;

            lobby.Show();
            this.Close();
        }

        private string GenerateUniqueIdentifier() {
            using (SHA256 sha256 = SHA256.Create()) {
                string combinedInput = textBoxPlayGuest.Text + GenerateShortString();

                byte[] hashBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(combinedInput));

                StringBuilder sb = new StringBuilder();
                foreach (byte b in hashBytes) {
                    sb.Append(b.ToString("x2"));
                }

                string uniqueIdentifier = sb.ToString().Substring(0, 12);

                return uniqueIdentifier;
            }
        }
        
        private string GenerateShortString() {
            const string ALLOWED_CHARS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

            const int DESIRED_LENGTH = 6;

            StringBuilder shortStringBuilder = new StringBuilder();
            Random random = new Random();

            for (int i = 0; i < DESIRED_LENGTH; i++) {
                int index = random.Next(ALLOWED_CHARS.Length);
                shortStringBuilder.Append(ALLOWED_CHARS[index]);
            }

            return shortStringBuilder.ToString();
        }
    }
}