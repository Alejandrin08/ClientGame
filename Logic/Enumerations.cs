using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersClient.Logic {
    public enum StatusOfNotification {
        Pending,
        Accepted
    }

    public enum Notification {
        FriendRequest,
        GameRequest,
    }
}
