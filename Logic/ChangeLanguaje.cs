using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersClient.Logic {
    public static  class ChangeLanguaje {
        public static event EventHandler LanguajeChanged;

        public static void OnLanguajeChanged() {
            LanguajeChanged?.Invoke(null, EventArgs.Empty);
        } 
    }
}
