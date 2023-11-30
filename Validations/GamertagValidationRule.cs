using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace ChineseCheckersClient.Validations {
    public class GamertagValidationRule : ValidationRule {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo) {
            Regex regex = new Regex(@"^[a-zA-Z0-9]+$");
            string input = value.ToString();
            if (!regex.IsMatch(input)) {
                return new ValidationResult(false, Properties.Resources.GamertagInvalido);
            } else {
                return ValidationResult.ValidResult;
            }
        }
    }
}
