using ChineseCheckersClient.Logic;
using ChineseCheckersClient.ServiceReference;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace ChineseCheckersClient.Validations {
    public class FriendRequestDuplicityValidationRule : ValidationRule {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo) {
            try {
                ServiceReference.IFriendship clientFriendship = new ServiceReference.FriendshipClient();
                int resultValidateRequestFriend = clientFriendship.ValidateFriendRequest(SingletonClass.Instance.IdUser, SingletonClass.Instance.IdFriend, StatusOfNotification.Pending.ToString());
                if (resultValidateRequestFriend == 1) {
                    return new ValidationResult(false, Properties.Resources.SolicitudAmistadDuplicado);
                } else {
                    return ValidationResult.ValidResult;
                }
            } catch (CommunicationException ex) {
                MessageBox.Show(ex.Message);
                return new ValidationResult(false, Properties.Resources.ErrorConexion);
            }
        }
    }
}
