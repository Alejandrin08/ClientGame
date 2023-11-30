using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace ChineseCheckersClient.Validations {
    public class PasswordValidationRule : ValidationRule {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo) {
            Regex regex = new Regex(@"^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\W_]).{5,15}$");
            if (!regex.IsMatch(value.ToString())) {
                return new ValidationResult(false, Properties.Resources.ContraseñaInvalida);
            } else {
                return ValidationResult.ValidResult;
            }
        }
    }
}