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
using System.Windows.Shapes;
using System.Xml.Linq;

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para ChangePassword.xaml
    /// </summary>
    public partial class ChangePassword : Window {

        public ChangePassword() {
            InitializeComponent();
            UserModel userModel = new UserModel();
            this.DataContext = userModel;
        }

        private void BackWindow(object sender, RoutedEventArgs e) {
            Login login = new Login();
            login.Show();
            this.Close();
        }

        private void BackWindowUserMenu(object sender, RoutedEventArgs e) {
            EditProfile editProfile = new EditProfile();
            editProfile.Show();
            this.Close();
        }

        private void ValidateTextBoxEmail(object sender, TextChangedEventArgs e) {
            bool isTextBoxValid = !Validation.GetHasError(textBoxEmail) && !string.IsNullOrEmpty(textBoxEmail.Text);
            if (isTextBoxValid) {
                buttonAcceptEmail.IsEnabled = true;
            } else {
                buttonAcceptEmail.IsEnabled = false;
            }
        }

        private void ValidateTextBoxToken(object sender, TextChangedEventArgs e) {
            bool isTextBoxValid = !Validation.GetHasError(textBoxToken) && !string.IsNullOrEmpty(textBoxToken.Text);
            if (isTextBoxValid) {
                buttonValidate.IsEnabled = true;
            } else {
                buttonValidate.IsEnabled = false;
            }
        }

        private void ValidateTextBoxPassword(object sender, TextChangedEventArgs e) {
            bool isPasswordValid = !Validation.GetHasError(textBoxPassword) && !string.IsNullOrEmpty(textBoxPassword.Text);
            if (isPasswordValid) {
                buttonAcceptPassword.IsEnabled = true;
            } else {
                buttonAcceptPassword.IsEnabled = false;
            }
        }

        private void AcceptEmail(object sender, RoutedEventArgs e) {
            if (EmailExist()) {
                textBoxEmail.IsEnabled = false;
                buttonAcceptEmail.IsEnabled = false;
                SendToken();
                textBlockToken.Visibility = Visibility.Visible;
                textBoxToken.Visibility = Visibility.Visible;
                buttonValidate.Visibility = Visibility.Visible;
            } else {
                MessageBox.Show(Properties.Resources.CorreoInexistente);
            }

        }

        private void ValidateToken(object sender, RoutedEventArgs e) {
            if (textBoxToken.Text == SingletonClass.Instance.Token) {
                textBoxToken.IsEnabled = false;
                buttonValidate.IsEnabled = false;
                textBlockPassword.Visibility = Visibility.Visible;
                textBoxPassword.Visibility = Visibility.Visible;
                buttonAcceptPassword.Visibility = Visibility.Visible;
            } else {
                MessageBox.Show(Properties.Resources.TokenIncorrecto);
            }

        }

        private bool EmailExist() {
            bool emailExist = false;
            SingletonClass.Instance.EmailUser = textBoxEmail.Text;
            UserModel userModel = new UserModel {
                Email = textBoxEmail.Text,
            };
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                if (client.ValidateEmail(userModel) == 1) {
                    emailExist = true;
                }
                return emailExist;
            } catch (CommunicationException ex) {
                MessageBox.Show(ex.Message);
                return false;
            }
        }

        private void SendToken() {
            Email email = new Email();
            string token = email.GenerateToken();
            SingletonClass.Instance.Token = token;
            string address = textBoxEmail.Text;
            string text = email.Format(token);
            email.SendEmail(Properties.Resources.Recuperar, text, address);
        }

        private void UpdatePassword(object sender, RoutedEventArgs e) {
            UserModel userModel = new UserModel {
                Email = SingletonClass.Instance.EmailUser,
                Password = textBoxPassword.Text,
            };
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                int resultUpdatePassword = client.UpdatePassword(userModel);
                if (resultUpdatePassword > 0) {
                    MessageBox.Show(Properties.Resources.CambioExitoso);
                } else {
                    MessageBox.Show(Properties.Resources.CambioFallo);
                }
                Login login = new Login();
                login.Show();
                this.Close();
            } catch (CommunicationException ex) {
                MessageBox.Show(ex.Message);
            }
        }
    }
}



