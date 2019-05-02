using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Threading.Tasks;
using CoreGraphics;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;
using Xamarin.Essentials;

namespace Volunesia.iOS.Services
{
    public class EmailHandler
    {

        /// <summary>
        /// Send an email with the certificate of completion for a particular event
        /// </summary>
        /// <param name="eid">The event ID in which the user has volunteered in.</param>
        public static void SendEmail(string email, string subject, string message)
        {
            string username = AppData.CurUser.FirstName + " " + AppData.CurUser.LastName;
            MailMessage mail = new MailMessage();
            MailAddress mailAddress = new MailAddress("contactvolunesia@gmail.com", "Volunesia");
            MailAddress mailAddress1 = new MailAddress(email, username);
            mail.To.Add(mailAddress1);
            mail.From = mailAddress;
            LinkedResource inline = new LinkedResource(@"VolunesiaIcon.jpg", MediaTypeNames.Image.Jpeg);
            inline.ContentId = Guid.NewGuid().ToString();
            inline.TransferEncoding = TransferEncoding.Base64;
            AlertShow.Print(inline.ToString());

            mail.Subject = subject;
            mail.Body = string.Format(
           message +
           @"<img src=""cid:{0}"" />", inline.ContentId);
            mail.IsBodyHtml = true;

            AlternateView htmlView = AlternateView.CreateAlternateViewFromString(mail.Body, null, MediaTypeNames.Text.Html);
            htmlView.LinkedResources.Add(inline);
            mail.AlternateViews.Add(htmlView);

            string sendEmailsFrom = "contactvolunesia@gmail.com";
            string sendEmailsFromPassword = "Volunesia#2019";
            NetworkCredential credentials = new NetworkCredential(sendEmailsFrom, sendEmailsFromPassword);


#pragma warning disable IDE0017 // Simplify object initialization
#pragma warning disable CS0618 // Type or member is obsolete
            SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
#pragma warning restore CS0618 // Type or member is obsolete
#pragma warning restore IDE0017 // Simplify object initialization
            mailClient.Credentials = credentials;
            mailClient.EnableSsl = true;
            mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            mailClient.Send(mail);


        }

        public static void SendCancelEmail(UIViewController inpView, Event e, string hostname, string npemail)
        {
            DateTime today = DateTime.Now;
            DateTime eventdate = today;//.EventDate;
            int result = DateTime.Compare(today, eventdate);
            if(result < 0)
            {
                string subject = e.EventName + " by " + hostname + " has been cancelled";
                List<Attendee> list = e.EventRoster.GetAttendeeList();
                list.Add(new Attendee { Name = "Carlos Hurtado" });
                foreach (Attendee a in list)
                {
                    string email = "hpfreak216@gmail.com";//a.EmailAddress;
                    string name = a.Name;
                    string message = string.Format("<div style=\\\"\\\"font-family:Trebuchet MS;font-size: 12pt;\\\"\\\">" +
                                                        "<p>Hello " + name + ",</p>" +
                                                        "<p>Due to certain circumstances, <strong>" + hostname + "</strong> has cancelled <strong>" +
                                                        e.EventName + "</strong>. We would like to thank you for your interest and would like to formally" +
                                                            " apologize for the inconvenience. If you have further questions or concerns, please do not hesitate " +
                                                            "in contacting the organization at <a href = \"mailto:" + npemail + "\">" + npemail + "</a></p>" +
                                                        "<p>Thank you for making the world a better place, <br>The Volunesia Team</p>" +
                                                    "</div>");
                    SendEmail(email, subject, message);

                }
                AlertShow.Show(inpView, "Event Cancelled", "Emails have been sent");
            }
            else if(result <= 0)
            {
                string subject = e.EventName + " by " + hostname + " is now over";
                List<Attendee> list = e.EventRoster.GetAttendeeList();
                list.Add(new Attendee { Name = "nane", Attended = false});
                foreach (Attendee a in list)
                {
                    string email = "hpfreak216@gmail.com";//a.EmailAddress;
                    string name = a.Name;
                    bool attended = a.Attended;
                    string message = "";
                    if (attended)
                    {
                        message = string.Format("<div style=\\\"\\\"font-family:Trebuchet MS;font-size: 12pt;\\\"\\\">" +
                                                        "<p>Hello " + name + ",</p>" +
                                                        "<p>Thank you for participating in <strong>" + e.EventName + "</strong> by <strong>" +
                                                        hostname+ "</strong>. Your points have been distributed and <i>Certificate of Completion</i> is " +
                                                        	"available within the app under \'Past\'. If you have further questions or concerns, please do not hesitate " +
                                                            "in contacting the organization at <a href = \"mailto:" + npemail + "\">" + npemail + "</a></p>" +
                                                        "<p>Thank you for making the world a better place, <br>The Volunesia Team</p>" +
                                                    "</div>");
                    }
                    else
                    {
                        message = string.Format("<div style=\\\"\\\"font-family:Trebuchet MS;font-size: 12pt;\\\"\\\">" +
                                                       "<p>Hello " + name + ",</p>" +
                                                       "<p>Thank you for expressing interest in <strong>" + e.EventName + "</strong> by <strong>" +
                                                       hostname + "</strong>. However, you were marked \'absent\' during the event and will not be " +
                                                       	"eligible for a certificate of completion. If you believe that this was a mistake, or you " +
                                                       	"have further questions or concerns, please do not hesitate in contacting the organization " +
                                                       	"at <a href = \"mailto:" + npemail + "\">" + npemail + "</a></p>" +
                                                       "<p>Thank you for making the world a better place, <br>The Volunesia Team</p>" +
                                                   "</div>");
                    }
                    SendEmail(email, subject, message);

                }


                //AlertShow.Show(inpView, "Event is now closed", "Emails have been sent");
            }



        }

        /// <summary>
        /// Wait for user to finish conducting email
        /// </summary>
        /// <param name="PrimaryEmail">Email address</param>
        /// <returns>The email.</returns>
        public static async Task AwaitEmail(UIViewController inpView, string PrimaryEmail)
        {
            List<string> recipients = new List<string>();
            recipients.Add(PrimaryEmail);
            try
            {
                var message = new EmailMessage
                {
                    Subject = "",
                    To = recipients,
                    //Cc = ccRecipients,
                    //Bcc = bccRecipients
                };
                await Email.ComposeAsync(message);
            }
#pragma warning disable CS0168 // Variable is declared but never used
            catch (FeatureNotSupportedException fbsEx)
#pragma warning restore CS0168 // Variable is declared but never used
            {
                AlertShow.Show(inpView, "Email is not supported on this device", "");
            }
#pragma warning disable CS0168 // Variable is declared but never used
#pragma warning disable RECS0022 // A catch clause that catches System.Exception and has an empty body
            catch (Exception ex)
#pragma warning restore RECS0022 // A catch clause that catches System.Exception and has an empty body
#pragma warning restore CS0168 // Variable is declared but never used
            {
                // Some other exception occurred
            }
        }
    }
}
