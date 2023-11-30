using ChineseCheckersClient.Logic;
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

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para Options.xaml
    /// </summary>
    public partial class Options : Window {
        public Options() {
            InitializeComponent();

            ChangeLanguaje.LanguajeChanged += LanguajeChangedEventHandler;
            string gamertag = SingletonClass.Instance.GamertagUser;
            textBlockGamertag.Text = gamertag;
            imageProfile.Source = App.DisplayImageProfile();
        }

        private void BackWindow(object sender, MouseButtonEventArgs e) {
            UserMenu userMenu = new UserMenu();
            userMenu.Show();
            this.Close();
        }

        private void LanguajeSelected(object sender, SelectionChangedEventArgs e) {
            if (comboBoxLanguaje.SelectedItem is ComboBoxItem selectedItem) {
                string selectedLanguage = selectedItem.Tag.ToString();
                Thread.CurrentThread.CurrentCulture = new CultureInfo(selectedLanguage);
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(selectedLanguage);

                UpdateUIResources();
                ChangeLanguaje.OnLanguajeChanged();
            }
        }
        
        private void LanguajeChangedEventHandler(object sender, EventArgs e) {
            UpdateUIResources();
        }

        private void UpdateUIResources() {
            textBlockOptions.Text = Properties.Resources.Opciones;
            textBlockSound.Text = Properties.Resources.Sonido;
            textBlockLanguaje.Text = Properties.Resources.Idioma;
            textBlockVisual.Text = Properties.Resources.AyudaVisual;
        }
    }
}
