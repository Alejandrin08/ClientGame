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
using System.Xml.Linq;

namespace ChineseCheckersClient.Validations {
    public class EmailDuplicityValidationRule : ValidationRule {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo) {
            UserModel userModel = new UserModel {
                Email = value.ToString(),
            };
            try {
                ServiceReference.IUser client = new ServiceReference.UserClient();
                int resultValidateEmail = client.ValidateEmail(userModel);
                if (resultValidateEmail == 1) {
                    return new ValidationResult(false, Properties.Resources.EmailDuplicado);
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
