using System;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using CoreGraphics;
using UIKit;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class EmailHandler
    {

        /// <summary>
        /// Send an email with the certificate of completion for a particular event
        /// </summary>
        /// <param name="eid">The event ID in which the user has volunteered in.</param>
        public static void SendEmail(UIImage img, string eid)
        {

            string username = AppData.CurUser.FirstName + " " + AppData.CurUser.LastName;
            string emailaddress = AppData.CurUser.EmailAddress;
            string sendEmailsFrom = "contactvolunesia@gmail.com";
            string sendEmailsFromPassword = "Volunesia#2019";

            MailMessage mail = new MailMessage();
            MailAddress mailAddress = new MailAddress("contactvolunesia@gmail.com", "Volunesia");
            MailAddress mailAddress1 = new MailAddress("hpfreak216@gmail.com", username);
            mail.To.Add(mailAddress1);
            mail.From = mailAddress;
            var certificate = img.AsJPEG().AsStream();
            //LinkedResource inline = new LinkedResource(@"VolunesiaSignature.jpg", MediaTypeNames.Image.Jpeg);
            LinkedResource inline = new LinkedResource(certificate, MediaTypeNames.Image.Jpeg);
            inline.ContentId = Guid.NewGuid().ToString();
            inline.TransferEncoding = TransferEncoding.Base64;
            mail.Subject = "Certificate of completion";
            mail.Body = String.Format(
           "<h3 style=\"\"font-family:Trebuchet MS;font-size: 12pt;\"\">Client: " + username + " Has Sent You A Screenshot</h3>" +
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
            mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            mailClient.Send(mail);

        }

        public static void WriteCertificate(string eid)
        {
            float x = 200, y = 200;
            string text = "Carlos Hurtado";
            var image = UIImage.FromFile("White.jpg");
            nfloat fWidth = image.Size.Width;
            nfloat fHeight = image.Size.Height;
            CGColorSpace colorSpace = CGColorSpace.CreateDeviceRGB();
            UIColor textColor = UIColor.FromRGB(0, 0, 0);

            UIGraphics.BeginImageContext(new CGSize(image.Size.Width, image.Size.Height));
            using (CGContext context = UIGraphics.GetCurrentContext())
            {
                // Copy original image
                var rect = new CGRect(0, 0, image.Size.Width, image.Size.Height);
                context.SetFillColor(UIColor.Black.CGColor);
                image.Draw(rect);

                // Use ScaleCTM to correct upside-down imaging
                context.ScaleCTM(1f, -1f);

                // Set the fill color for the text
                context.SetTextDrawingMode(CGTextDrawingMode.Fill);
                context.SetFillColor(UIColor.FromRGB(0, 0, 0).CGColor);

                // Draw the text with textSize
                var textSize = 20f;
                context.SelectFont("Arial", textSize, CGTextEncoding.MacRoman);
                context.ShowTextAtPoint(x, y, text);
                AlertShow.Print("X: " + image.Size.Height + "\nY: " + image.Size.Width);
            }

            // Get the resulting image from context
            var resultImage = UIGraphics.GetImageFromCurrentImageContext();
            UIGraphics.EndImageContext();
            SendEmail(resultImage, "");

            /*
            using (CGBitmapContext ctx = new CGBitmapContext(IntPtr.Zero, (nint)fWidth, (nint)fHeight, 8, 4 * (nint)fWidth, CGColorSpace.CreateDeviceRGB(), CGImageAlphaInfo.PremultipliedFirst))
            {
                ctx.DrawImage(new CGRect(0, 0, (double)fWidth, (double)fHeight), uiImage.CGImage);

                ctx.SelectFont("Trebuchet MS", 10, CGTextEncoding.MacRoman);

                //Measure the text's width - This involves drawing an invisible string to calculate the X position difference
                float start, end, textWidth;

                //Get the texts current position
                start = (float)ctx.TextPosition.X;
                //Set the drawing mode to invisible
                ctx.SetTextDrawingMode(CGTextDrawingMode.Invisible);
                //Draw the text at the current position
                ctx.ShowText(AppData.CurUser.FirstName);
                //Get the end position
                end = (float)ctx.TextPosition.X;
                //Subtract start from end to get the text's width
                textWidth = end - start;

                nfloat fRed;
                nfloat fGreen;
                nfloat fBlue;
                nfloat fAlpha;
                //Set the fill color to black. This is the text color.
                textColor.GetRGBA(out fRed, out fGreen, out fBlue, out fAlpha);
                ctx.SetFillColor(fRed, fGreen, fBlue, fAlpha);

                //Set the drawing mode back to something that will actually draw Fill for example
                ctx.SetTextDrawingMode(CGTextDrawingMode.Fill);

                //Draw the text at given coords.
                ctx.ShowTextAtPoint(8, 17, AppData.CurUser.FirstName);

                var certificate = UIImage.FromImage(ctx.ToImage());
                SendEmail(certificate, eid);
            }*/
        }

        public static void DrawI()
        {
             
        }

    }
}
