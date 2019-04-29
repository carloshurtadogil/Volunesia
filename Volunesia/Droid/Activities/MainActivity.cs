using Android.App;
using Android.Widget;
using Android.OS;
using System.Collections.Generic;
using Firebase.Database.Query;
using System;
using Volunesia.Services;
using Volunesia.Droid.Activities;
using Android.Graphics;
using Android.Content;
using System.IO;
using System.Net.Mail;
using static System.Net.Mime.MediaTypeNames;
using System.Net.Mime;
using System.Net;

namespace Volunesia.Droid
{
    [Activity(Label = "Volunesia", MainLauncher = true, Icon = "@mipmap/icon")]
    public class MainActivity : Activity
    {

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            AppData_Droid.GetInstance(this);
            ReadWrite.ReadUser();
            if (AppData.CurUser != null)
            {
                if(AppData.CurUser.UserType.Equals("V"))
                {
                    StartActivity(typeof(VolunteerEventsActivity));
                }
                else if(AppData.CurUser.UserType.Equals("NP"))
                {
                    StartActivity(typeof(NonprofitHomeActivity));
                }
            }
            else
            {
                // Set our view from the "main" layout resource
                SetContentView(Resource.Layout.Main);

                // Get our button from the layout resource,
                // and attach an event to it
                Button loginButton = FindViewById<Button>(Resource.Id.loginButton);
                Button signUpButton = FindViewById<Button>(Resource.Id.signupButton);


//                ImageView volunesiaImage = FindViewById<ImageView>(Resource.Id.volunesiaLogoImage);
//                Bitmap bitmap = BitmapFactory.DecodeResource(this.Resources, Resource.Mipmap.volunteercert);
//                Bitmap drawableBitmap = bitmap.Copy(Bitmap.Config.Argb8888, true);
//                Canvas canvas = new Canvas(drawableBitmap);
//                Paint paint = new Paint();
//                paint.Color = Color.Black;
//                paint.TextSize = 40;
//                paint.TextAlign = Paint.Align.Center;
                
//                canvas.DrawText("Muneer Tomeh", canvas.Width/2, (canvas.Height/3)+45, paint);
//                canvas.DrawText("Volunteering 101", canvas.Width/3, (canvas.Height/2)+45, paint);
//                canvas.DrawText("4 hours", (canvas.Width *2)/3, (canvas.Height/2)+45, paint);

  
//                //volunesiaImage.SetImageBitmap(drawableBitmap);

//                byte[] bitmapData;

//                MemoryStream stream = new MemoryStream();
                
//                drawableBitmap.Compress(Bitmap.CompressFormat.Jpeg, 0, stream);
//                bitmapData = stream.ToArray();
//                stream.Position = 0;
                

//                string sendEmailsFrom = "contactvolunesia@gmail.com";
//                string sendEmailsFromPassword = "Volunesia#2019";


//                MailMessage mail = new MailMessage();
//                MailAddress mailAddress = new MailAddress("contactvolunesia@gmail.com", "Volunesia");
//                MailAddress mailAddress1 = new MailAddress("tomehmuneer@gmail.com", "Recipient");
//                mail.To.Add(mailAddress1);
//                mail.From = mailAddress;
//                var certificate = stream;
//                //LinkedResource inline = new LinkedResource(@"VolunesiaSignature.jpg", MediaTypeNames.Image.Jpeg);
//                LinkedResource inline = new LinkedResource(certificate, MediaTypeNames.Image.Jpeg);
//                inline.ContentId = Guid.NewGuid().ToString();
//                inline.TransferEncoding = TransferEncoding.Base64;
//                mail.Subject = "Certificate of completion";
//                mail.Body = String.Format(
//               "<h3 style=\"\"font-family:Trebuchet MS;font-size: 12pt;\"\">Client: " + "Recipient" + " Has Sent You A Screenshot</h3>" +
//               @"<img src=""cid:{0}"" />", inline.ContentId);
//                mail.IsBodyHtml = true;
//                //Trebuchet MS

//                AlternateView htmlView = AlternateView.CreateAlternateViewFromString(mail.Body, null, MediaTypeNames.Text.Html);
//                htmlView.LinkedResources.Add(inline);
//                mail.AlternateViews.Add(htmlView);


//                NetworkCredential credentials = new NetworkCredential(sendEmailsFrom, sendEmailsFromPassword);


//#pragma warning disable IDE0017 // Simplify object initialization
//#pragma warning disable CS0618 // Type or member is obsolete
//                SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
//#pragma warning restore CS0618 // Type or member is obsolete
//#pragma warning restore IDE0017 // Simplify object initialization
//                mailClient.Credentials = credentials;
//                mailClient.EnableSsl = true;
//                mailClient.Timeout = 10000;
//                mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;

//                try
//                {
//                    mailClient.Send(mail);
//                }
//                catch(Exception ex)
//                {
//                    Console.WriteLine();
//                }
                


                loginButton.Click += NavigateToLoginPage;
                signUpButton.Click += NavigateToSignupPage;

                //AppData_Droid.GetInstance(this);
                //FirebaseTest();
            }


        }

        //Navigates to the the login page
        public void NavigateToLoginPage(object sender, EventArgs e)
        {
            StartActivity(typeof(LoginActivity));
        }

        //Navigates to the sign up page
        public void NavigateToSignupPage(object sender, EventArgs e)
        {
            StartActivity(typeof(MainRegisterActivity));
        }

        void FirebaseTest ()
        {
            AppData_Droid.Auth.CreateUserWithEmailAndPassword("carlos.droidtest@volunesia.com",
                                                              "tester.1234");

            Dictionary<string, string> myTestDict = new Dictionary<string, string>();
            myTestDict.Add("key", "value");

            AppData_Droid.DataNode.Child("Test").PutAsync(myTestDict);
        }

    }
}

