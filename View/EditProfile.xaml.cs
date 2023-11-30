using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
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
    /// Lógica de interacción para EditProfile.xaml
    /// </summary>
    public partial class EditProfile : Window {

        private List<BitmapImage> ImagesList;
        
        public EditProfile() {
            InitializeComponent();
            ChangeLanguaje.LanguajeChanged += LanguajeChangedEventHandler;
            ChangeImage();
            SetInfo();   
        }

        public void SetInfo() {
            string gamertag = SingletonClass.Instance.GamertagUser;
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                UserModel userModel = client.InfoUser(gamertag);
                SingletonClass.Instance.EmailUser = userModel.Email;
                int value = GetIndexImage(userModel.ImageProfile);
                SingletonClass.Instance.ImageProfileUser = value;
                textBoxGamertag.Text = userModel.Gamertag;
                textBoxEmail.Text = userModel.Email;
                sliderImage.Value = value;
                this.DataContext = userModel;
                ActivateButton();
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        public int GetIndexImage(string image) {
            int index = -1;
            string a = "/Resources/Images/" + image;
            for (int i = 0; i < ImagesList.Count; i++) {
                string imagePath = ImagesList[i].UriSource.ToString();
                if (imagePath == a) {
                    index = i;
                }
            }
            return index;
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

        private void SaveChanges(object sender, RoutedEventArgs e) {
            UserModel userModel = new UserModel {
                Id = SingletonClass.Instance.IdUser,
                Gamertag = textBoxGamertag.Text,
                Email = textBoxEmail.Text,
                ImageProfile = GetImageValue(),
            };
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                int resultUpdateUser = client.UpdateInfoUser(userModel, SingletonClass.Instance.GamertagUser);
                SingletonClass.Instance.GamertagUser = userModel.Gamertag;
                if (resultUpdateUser > 0) {
                    MessageBox.Show(Properties.Resources.EditarExitoso);
                } else {
                    MessageBox.Show(Properties.Resources.EditarFallo);
                }
                UserMenu userMenu = new UserMenu();
                userMenu.Show();
                this.Close();
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}");
            }
        }

        private void ChangePassword(object sender, MouseButtonEventArgs e) {
            ChangePassword changePassword = new ChangePassword();
            changePassword.buttonBackWindowLogin.Visibility = Visibility.Collapsed;
            changePassword.buttonBackWindowEditProfile.Visibility = Visibility.Visible;
            changePassword.Show();
            this.Close();
        }


        private void LanguajeChangedEventHandler(object sender, EventArgs e) {
            UpdateUIResources();
        }

        private void UpdateUIResources() {
            textBlockRegisterUser.Text = Properties.Resources.RegistroUsuario;
            textBlockName.Text = Properties.Resources.Nombre;
            textBlockEmail.Text = Properties.Resources.Correo;
            buttonSaveChanges.Content = Properties.Resources.Registrarse;
        }

        private void BackWindow(object sender, RoutedEventArgs e) {
            UserMenu userMenu = new UserMenu();
            userMenu.Show();
            this.Close();
        }

        private void ImageSliderValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e) {
            int selectedIndex = (int)sliderImage.Value;
            if (selectedIndex >= 0 && selectedIndex < ImagesList.Count) {
                imageDisplay.Source = ImagesList[selectedIndex];
            }
            ActivateButton();
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
            ActivateButton();
        }

        private void ActivateButton() {
            buttonSaveChanges.IsEnabled = false;
            bool isValidationTrue = !Validation.GetHasError(textBoxGamertag) && !Validation.GetHasError(textBoxEmail);
            bool isGamertagValid = textBoxGamertag.Text != SingletonClass.Instance.GamertagUser;
            bool isEmailValid = textBoxEmail.Text != SingletonClass.Instance.EmailUser;
            bool isImageDiferent = (int)sliderImage.Value != SingletonClass.Instance.ImageProfileUser;
            if (isValidationTrue) {
                if (isGamertagValid || isEmailValid || isImageDiferent) {
                    buttonSaveChanges.IsEnabled = true;
                }
            } else {
                buttonSaveChanges.IsEnabled = false;
            }
        }      
    }
}