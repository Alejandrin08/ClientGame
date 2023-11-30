using ChineseCheckersClient.Logic;
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

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para Statistics.xaml
    /// </summary>
    public partial class Statistics : Window {
        public Statistics() {
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

        private void LanguajeChangedEventHandler(object sender, EventArgs e) {
            UpdateUIResources();
        }

        private void UpdateUIResources() {
            textBlockStatistics.Text = Properties.Resources.Estadisticas;
            textBlockStartedGames.Text = Properties.Resources.JuegosComenzados;
            textBlockGamesWon.Text = Properties.Resources.JuegosGanados;
            textBlockVictorys.Text = Properties.Resources.PorcentajeVictorias;
        }
    }
}
