using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ChineseCheckersClient.Logic {
    internal class Email {

        public void SendEmail(string subject, string text, string address) {
            try {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("chinesecheckerspa@gmail.com", "dtka liid gfie xdvw");
                MailMessage mm = new MailMessage();
                mm.IsBodyHtml = true;
                mm.Priority = MailPriority.Normal;
                mm.From = new MailAddress("chinesecheckerspa@gmail.com");
                mm.Subject = subject;
                mm.Body = text;
                mm.To.Add(new MailAddress(address));
                smtp.Send(mm);
            }catch (SmtpException ) {
                MessageBox.Show(Properties.Resources.ErrorCorreo);
            }
        }

        public string Format(String token) {
            String content = "<html>\n"
                + "<head>\n"
                + "    <title>Sistema</title>\n"
                + "</head>\n"
                + "<body>\n"
                + "    <div style=\"text-align: center;\">\n"
                + "       <img src=\"https://i.ibb.co/3mmDxfT/chinese-Checkers.png\" alt=\"chinese-Checkers\" border=\"0\">\n"
                + "    </div>\n"
                + "    <h1><center>" + Properties.Resources.CambiarContraseña + "</h1>\n"
                + "    <p><center>" + Properties.Resources.Token + "</p>\n"
                + "    <p><center>" + token + "</p>\n"
                + "    <div style=\"text-align: center;\">\n"
                + "        <img src=\"https://i.ibb.co/0fwLny3/water-Mark.png\" alt=\"water-Mark\" border=\"0\">\n"
                + "    </div>\n"
                + "    <p><center>" + Properties.Resources.CorreoInformativo + "</p>\n"
                + "</body>\n"
                + "</html>";
            return content;
        }

        public string FormatSendRequest(String gamertag) {
            String content = "<html>\n"
                + "<head>\n"
                + "    <title>Sistema</title>\n"
                + "</head>\n"
                + "<body>\n"
                + "    <div style=\"text-align: center;\">\n"
                + "       <img src=\"https://i.ibb.co/3mmDxfT/chinese-Checkers.png\" alt=\"chinese-Checkers\" border=\"0\">\n"
                + "    </div>\n"
                + "    <h1><center>" + Properties.Resources.SolicitudAmistad + "</h1>\n"
                + "    <p><center>" + gamertag + " " +Properties.Resources.SolicitudDe + "</p>\n"
                + "    <div style=\"text-align: center;\">\n"
                + "        <img src=\"https://i.ibb.co/0fwLny3/water-Mark.png\" alt=\"water-Mark\" border=\"0\">\n"
                + "    </div>\n"
                + "    <p><center>" + Properties.Resources.CorreoInformativo + "</p>\n"
                + "</body>\n"
                + "</html>";
            return content;
        }

        public string GenerateToken() {
            const string CHARACTERS = "0123456789";
            StringBuilder token = new StringBuilder();
            Random random = new Random();

            for (int i = 0; i < 6; i++) {
                int index = random.Next(0, CHARACTERS.Length);
                token.Append(CHARACTERS[index]);
            }
            return token.ToString();
        }
    }
}
