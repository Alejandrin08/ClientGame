using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace ChineseCheckersClient.Validations {
    public class TokenValidationRule : ValidationRule {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo) {
            Regex regex = new Regex(@"^\d{6}$");
            if (!regex.IsMatch(value.ToString())) {
                return new ValidationResult(false, ChineseCheckersClient.Properties.Resources.TokenInvalido);
            } else {
                return ValidationResult.ValidResult;
            }
        }
    }
}
