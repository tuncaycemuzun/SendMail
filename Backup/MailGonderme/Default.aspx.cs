using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using System.Net.Configuration;
using System.IO;

namespace MailGonderme
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnGonder_Click(object sender, System.EventArgs e)
        {
            if (txtAlici.Text != "" & txtKonu.Text != "" & txtMesaj.Text != "")
            {
                SendMail();
                try
                {
                    txtAlici.Text = "";
                    txtKonu.Text = "";
                    txtMesaj.Text = "";
                    Response.Write("<script>alert('Mail gönderildi..')</script>");
                }   
                catch
                {
                    Response.Write("<script>alert('Mail gönderilemedi..')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Boş alan geçilemez..')</script>");
            }
        }
        public void SendMail()
        {
            var smtpSection = (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
            string strHost = smtpSection.Network.Host;//mail settings'den host'u çektik
            int port = smtpSection.Network.Port;//mail settings'den port'u çektik
            string strUserName = smtpSection.Network.UserName;//mail settings'den kullanıcı adını çektik
            string strFromPass = smtpSection.Network.Password;//mail settings'den şifreyi çektik
            SmtpClient smtp = new SmtpClient(strHost, port);
            NetworkCredential cert = new NetworkCredential(strUserName, strFromPass);
            smtp.Credentials = cert;
            smtp.EnableSsl = true;
            MailMessage mail = new MailMessage(smtpSection.From, txtAlici.Text);
            mail.Subject = txtKonu.Text;
            mail.IsBodyHtml = true;
            mail.Body = txtMesaj.Text;
            if (dosyaEki.HasFile)
            {
                mail.Attachments.Add(new Attachment(dosyaEki.PostedFile.InputStream, dosyaEki.FileName));
            }
            smtp.Send(mail);    
         }

    }
}
