using ChineseCheckersClient.Logic;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace ChineseCheckersClient.Validations {
    public class EmailValidationRule : ValidationRule {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo) {
            
            Regex regex = new Regex(@"^(?i)([a-z0-9._%+-]+)@((uv\.mx|estudiantes\.uv\.mx|gmail\.com|hotmail\.com|outlook\.com|edu\.mx))$");
            if (!regex.IsMatch(value.ToString())) {
                return new ValidationResult(false, Properties.Resources.EmailInvalido);
            } else {
                return ValidationResult.ValidResult;
            }
        }
    }
}
