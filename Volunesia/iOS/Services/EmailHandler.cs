using System;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class EmailHandler
    {



        public static void SendEmailAsync()
        {
            string username = AppData.CurUser.FirstName + " " + AppData.CurUser.LastName;
            MailMessage mail = new MailMessage();
            MailAddress mailAddress = new MailAddress("contactvolunesia@gmail.com", "Volunesia");
            MailAddress mailAddress1 = new MailAddress("hpfreak216@gmail.com", username);
            mail.To.Add(mailAddress1);
            mail.From = mailAddress; 
            LinkedResource inline = new LinkedResource(@"VIcon.jpg", MediaTypeNames.Image.Jpeg);
            inline.ContentId = Guid.NewGuid().ToString();
            inline.TransferEncoding = TransferEncoding.Base64;
            AlertShow.Print(inline.ToString() + "with ID" + inline.ContentId);
            mail.Subject = "Certificate of completion";
            mail.Body = String.Format(
           "<h3>Client: " + username + " Has Sent You A Screenshot</h3>" +
           @"<img src=""cid:{0}"" />", inline.ContentId);
            mail.IsBodyHtml = true;

            AlternateView htmlView = AlternateView.CreateAlternateViewFromString(mail.Body, null, MediaTypeNames.Text.Html);
            htmlView.LinkedResources.Add(inline);
            mail.AlternateViews.Add(htmlView);

            string sendEmailsFrom = "contactvolunesia@gmail.com";
            string sendEmailsFromPassword = "Volunesia#2019";
            NetworkCredential credentials = new NetworkCredential(sendEmailsFrom, sendEmailsFromPassword);


            SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
            mailClient.Credentials = credentials;
            mailClient.EnableSsl = true;
            mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            mailClient.Send(mail);

        }

    }
}
