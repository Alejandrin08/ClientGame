using ChineseCheckersClient.ServiceReference;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace ChineseCheckersClient.Validations {
    public class GamertagDuplicityValidationRule : ValidationRule {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo) {
            UserModel userModel = new UserModel {
                Gamertag = value.ToString(),
            };
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                int resultValidateEmail = client.ValidateGamertag(userModel);
                if (resultValidateEmail == 1) {
                    return new ValidationResult(false, Properties.Resources.GamertagDuplicado);
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
