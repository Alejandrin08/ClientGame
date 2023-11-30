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

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para ReportPlayer.xaml
    /// </summary>
    public partial class ReportPlayer : Window {
        public ReportPlayer() {
            InitializeComponent();
            string gamertag = SingletonClass.Instance.GamertagPlayerSelected;
            textBlockGamertag.Text = gamertag;
            imageProfile.Source = App.DisplayImageProfile();
        }

        private void BackWindow(object sender, MouseButtonEventArgs e) {
            this.Close();
        }

        private int Evaluate(int idUser, string reason, DateTime currentDate, DateTime endDate) {
            int result;
            try {
                ServiceReference.IReport clientReport = new ServiceReference.ReportClient();
                ReportModel reportModel = new ReportModel {
                    IdUser = idUser,
                    Reason = reason,
                    CurrentDate = currentDate,
                    EndDate = endDate
                };

                int numReports = clientReport.GetNumReports(SingletonClass.Instance.IdFriend);
                if (numReports > 0) {
                    result = clientReport.UpdateReport(reportModel);
                } else {
                    result = clientReport.AddReport(reportModel);
                }
                return result;
            } catch (CommunicationException ex) {
                MessageBox.Show(ex.Message);
                return -1;
            }
        }

        private string GetTextCheckBox() {
            string reason = "";
            if (checkBoxAbandonment.IsChecked == true) {
                reason = checkBoxAbandonment.Content.ToString();
            } else {
                if (checkBoxBadLanguaje.IsChecked == true) {
                    reason = checkBoxBadLanguaje.Content.ToString();
                } else {
                    if (checkBoxInactivity.IsChecked == true) {
                        reason = checkBoxInactivity.Content.ToString();
                    }
                }
            }
            return reason;
        }

        private void CheckBoxSelected(object sender, RoutedEventArgs e) {
            if (checkBoxAbandonment.IsChecked == true) {
                checkBoxBadLanguaje.IsEnabled = false;
                checkBoxInactivity.IsEnabled = false;
                btnReport.IsEnabled = true;
            } else {
                if (checkBoxBadLanguaje.IsChecked == true) {
                    checkBoxAbandonment.IsEnabled = false;
                    checkBoxInactivity.IsEnabled = false;
                    btnReport.IsEnabled = true;
                } else {
                    if (checkBoxInactivity.IsChecked == true) {
                        checkBoxAbandonment.IsEnabled = false;
                        checkBoxBadLanguaje.IsEnabled = false;
                        btnReport.IsEnabled = true;
                    }
                }
            }
        }

        private void CheckBoxUnchecked(object sender, RoutedEventArgs e) {
            btnReport.IsEnabled = false;
            checkBoxBadLanguaje.IsEnabled = true;
            checkBoxInactivity.IsEnabled = true;
            checkBoxAbandonment.IsEnabled = true;
        }

        private void Report(object sender, RoutedEventArgs e) {
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                SingletonClass.Instance.IdFriend = client.GetId(SingletonClass.Instance.GamertagPlayerSelected);
                int idUser = SingletonClass.Instance.IdFriend;
                string reason = GetTextCheckBox();
                DateTime dateCurrent = DateTime.Now;
                DateTime dateFinish = dateCurrent.AddDays(3);
                int result = Evaluate(idUser, reason, dateCurrent, dateFinish);
                if (result == 1) {
                    MessageBox.Show(Properties.Resources.ReporteExitoso);
                } else {
                    MessageBox.Show(Properties.Resources.ErrorReporte);
                }
            } catch (CommunicationException ex) {
                MessageBox.Show(ex.Message);
            }
        }
    }
}