using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace Volunesia.Droid.Service
{
    public class AndroidEmailHandler
    {

        public bool SendEventDeletionNotificationViaEmail(string [] addresses, string eventName)
        {
            string sendEmailsFrom = "contactvolunesia@gmail.com";
            string sendEmailsFromPassword = "Volunesia#2019";

            MailMessage mail = new MailMessage();
            MailAddress mailAddress = new MailAddress("contactvolunesia@gmail.com", "Volunesia");
            mail.From = mailAddress;
            foreach (var address in addresses)
            {
                mail.To.Add(address);
            }

            mail.Subject = "Volunesia: " + eventName + " has been cancelled";
            mail.Body = String.Format("<div style=\\\"\\\"font-family:Trebuchet MS;font-size: 12pt;\\\"\\\">" +
                                                        "<p>Hello Volunteers"  + ",</p>" +
                                                        "<p>Due to certain circumstances, <strong>" + eventName + "</strong> has cancelled." +
                                                          "We would like to thank you for your interest and would like to formally" +
                                                            " apologize for the inconvenience. </p>" +
                                                        "<p>Thank you for making the world a better place, <br>The Volunesia Team</p>" +
                                                    "</div>");
                
                
            mail.IsBodyHtml = true;

            AlternateView htmlView = AlternateView.CreateAlternateViewFromString(mail.Body, null, MediaTypeNames.Text.Html);
            mail.AlternateViews.Add(htmlView);


            NetworkCredential credentials = new NetworkCredential(sendEmailsFrom, sendEmailsFromPassword);


#pragma warning disable IDE0017 // Simplify object initialization
#pragma warning disable CS0618 // Type or member is obsolete
            SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
#pragma warning restore CS0618 // Type or member is obsolete
#pragma warning restore IDE0017 // Simplify object initialization
            mailClient.Credentials = credentials;
            mailClient.EnableSsl = true;
            mailClient.Timeout = 10000;
            mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;

            bool eventDeletionNotificationSent = false;

            try
            {
                mailClient.Send(mail);
                eventDeletionNotificationSent = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine();
            }

            return eventDeletionNotificationSent;


        }


        /// <summary>
        /// Sends a certificate of achievement for a volunteer who has successfully contributed to an event
        /// </summary>
        public bool SendCertificateOfAchievementViaEmail(MemoryStream stream, string emailAddress)
        {
            string sendEmailsFrom = "contactvolunesia@gmail.com";
            string sendEmailsFromPassword = "Volunesia#2019";


            MailMessage mail = new MailMessage();
            MailAddress mailAddress = new MailAddress("contactvolunesia@gmail.com", "Volunesia");
            MailAddress mailAddress1 = new MailAddress(emailAddress, "Recipient");
            mail.To.Add(mailAddress1);
            mail.From = mailAddress;
            var certificate = stream;
            //LinkedResource inline = new LinkedResource(@"VolunesiaSignature.jpg", MediaTypeNames.Image.Jpeg);
            LinkedResource inline = new LinkedResource(certificate, MediaTypeNames.Image.Jpeg);
            inline.ContentId = Guid.NewGuid().ToString();
            inline.TransferEncoding = TransferEncoding.Base64;
            mail.Subject = "Certificate of completion";
            mail.Body = String.Format(
           "<h3 style=\"\"font-family:Trebuchet MS;font-size: 12pt;\"\">Client: " + "Recipient" + " Has Sent You A Screenshot</h3>" +
           @"<img src=""cid:{0}"" />", inline.ContentId);
            mail.IsBodyHtml = true;
            //Trebuchet MS

            AlternateView htmlView = AlternateView.CreateAlternateViewFromString(mail.Body, null, MediaTypeNames.Text.Html);
            htmlView.LinkedResources.Add(inline);
            mail.AlternateViews.Add(htmlView);


            NetworkCredential credentials = new NetworkCredential(sendEmailsFrom, sendEmailsFromPassword);


#pragma warning disable IDE0017 // Simplify object initialization
#pragma warning disable CS0618 // Type or member is obsolete
            SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
#pragma warning restore CS0618 // Type or member is obsolete
#pragma warning restore IDE0017 // Simplify object initialization
            mailClient.Credentials = credentials;
            mailClient.EnableSsl = true;
            mailClient.Timeout = 10000;
            mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;

            bool certificateSent = false;

            try
            {
                mailClient.Send(mail);
                certificateSent = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine();
            }

            return certificateSent;

        }
    }
}