using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersClient.Logic {
    public class SingletonClass {

        private static SingletonClass _instance;
        public static SingletonClass Instance {
            get {
                if (_instance == null) {
                    _instance = new SingletonClass();
                }
                return _instance;
            }
        }

        public int IdUser { get; set; }
        public int IdFriend { get; set; }
        public string GamertagPlayerSelected { get; set; }
        public string GamertagUser { get; set; }       
        public string EmailUser { get; set; }
        public string Token { get; set; }
        public int ImageProfileUser { get; set; }
        public string ImageProfile { get; set; }
        public string GamertagFriend { get; set; }
        public string IdRoom { get; set; }
    }
}
