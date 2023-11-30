using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

namespace ChineseCheckersClient.Logic {
    public class MusicPlayer {

        private readonly MediaPlayer _mediaPlayer;

        public MusicPlayer(string musicFilePath) {
            _mediaPlayer = new MediaPlayer();
            _mediaPlayer.Open(new Uri(musicFilePath, UriKind.RelativeOrAbsolute));
            _mediaPlayer.MediaEnded += (s, args) => _mediaPlayer.Position = TimeSpan.Zero;
        }

        public void Play() {
            _mediaPlayer.Play();
        }

        public void Stop() {
            _mediaPlayer.Stop();
        }
    }
}
