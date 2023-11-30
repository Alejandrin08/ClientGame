using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using ChineseCheckersClient.Validations;
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
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Path = System.IO.Path;

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para RegisterUser.xaml
    /// </summary>
    public partial class RegisterUser : Window {

        private List<BitmapImage> ImagesList;
        private const string USER_STATUS = "1";

        public RegisterUser() {
            InitializeComponent();
            ChangeLanguaje.LanguajeChanged += LanguajeChangedEventHandler;
            ChangeImage();

            UserModel userModel = new UserModel();
            this.DataContext = userModel;
        }

        private void ChangeImage() {
            ImagesList = new List<BitmapImage>();
            ImagesList.Add(new BitmapImage(new Uri("/Resources/Images/hollowIcon.png", UriKind.Relative)));
            ImagesList.Add(new BitmapImage(new Uri("/Resources/Images/catPixelArt.png", UriKind.Relative)));
            ImagesList.Add(new BitmapImage(new Uri("/Resources/Images/Cheems.png", UriKind.Relative)));
            ImagesList.Add(new BitmapImage(new Uri("/Resources/Images/catTwoPixelArt.png", UriKind.Relative)));
            ImagesList.Add(new BitmapImage(new Uri("/Resources/Images/pollito.png", UriKind.Relative)));
            ImagesList.Add(new BitmapImage(new Uri("/Resources/Images/Pokemon.png", UriKind.Relative)));

            imageDisplay.Source = ImagesList[0];

            sliderImage.ValueChanged += ImageSliderValueChanged;
        }

        private void Register(object sender, RoutedEventArgs e) {
            UserModel userModel = new UserModel {
                Gamertag = textBoxName.Text,
                Email = textBoxEmail.Text,
                Password = textBoxPassword.Text,
                PlayerStatus = USER_STATUS,
                ImageProfile = GetImageValue(),
            };
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                int resultAddUserAccount = client.AddUserAccount(userModel);
                int resultAddUserGame = client.AddUserGame(userModel);

                if (resultAddUserGame > 0 && resultAddUserAccount > 0) {
                    MessageBox.Show(Properties.Resources.UsuarioAgregado);
                    Login login = new Login();
                    login.Show();
                    this.Close();
                } else {
                    MessageBox.Show(Properties.Resources.UsuarioNoAgregado);
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        private void LanguajeChangedEventHandler(object sender, EventArgs e) {
            UpdateUIResources();
        }

        private void UpdateUIResources() {
            textBlockRegisterUser.Text = Properties.Resources.RegistroUsuario;
            textBlockName.Text = Properties.Resources.Nombre;
            textBlockEmail.Text = Properties.Resources.Correo;
            textBlockPassword.Text = Properties.Resources.Contraseña;
            buttonRegister.Content = Properties.Resources.Registrarse;
        }

        private void BackWindow(object sender, RoutedEventArgs e) {
            Login login = new Login();
            login.Show();
            this.Close();
        }

        private void ImageSliderValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e) {
            int selectedIndex = (int)sliderImage.Value;
            if (selectedIndex >= 0 && selectedIndex < ImagesList.Count) {
                imageDisplay.Source = ImagesList[selectedIndex];
            }
        }
        private string GetImageValue() {
            int selectedIndex = (int)sliderImage.Value;
            string valueImage = "";
            if (selectedIndex >= 0 && selectedIndex < ImagesList.Count) {
                string imagePath = ImagesList[selectedIndex].ToString();
                valueImage = Path.GetFileName(imagePath);
            }
            return valueImage;
        }

        private void ValidateTextBox(object sender, TextChangedEventArgs e) {
            bool isNameValid = !Validation.GetHasError(textBoxName) && !string.IsNullOrEmpty(textBoxName.Text);
            bool isEmailValid = !Validation.GetHasError(textBoxEmail) && !string.IsNullOrEmpty(textBoxName.Text);
            bool isPasswordValid = !Validation.GetHasError(textBoxPassword) && !string.IsNullOrEmpty(textBoxPassword.Text);
            if (isNameValid && isEmailValid  && isPasswordValid) {
                buttonRegister.IsEnabled = true;
            } else {
                buttonRegister.IsEnabled = false;
            }
        }  
    }
}
