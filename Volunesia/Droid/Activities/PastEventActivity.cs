using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

using Volunesia.Models;
using Newtonsoft.Json;
using Volunesia.Droid.Service;
using Android.Graphics;
using System.IO;
using Volunesia.Services;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "PastEventActivity")]
    public class PastEventActivity : Activity
    {
        public VolunteerEvent SelectedEvent { get; set; }
        public TextView NonprofitName { get; set; }
        public TextView EventName { get; set; }
        public TextView EventDate { get; set; }
        public TextView Attended { get; set; }
        public TextView Hours { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SelectedEvent = JsonConvert.DeserializeObject<VolunteerEvent>(Intent.GetStringExtra("pastEvent"));

            SetContentView(Resource.Layout.PastEvent);

            NonprofitName = FindViewById<TextView>(Resource.Id.nonprofitNameView);
            EventName = FindViewById<TextView>(Resource.Id.eventNameView);
            EventDate = FindViewById<TextView>(Resource.Id.eventDateView);
            Attended = FindViewById<TextView>(Resource.Id.attendedView);
            Hours = FindViewById<TextView>(Resource.Id.hoursView);



            Button rateButton = FindViewById<Button>(Resource.Id.rate);
            Button generateButton = FindViewById<Button>(Resource.Id.generate);
            Button backButton = FindViewById<Button>(Resource.Id.backToLast);

            NonprofitName.Text = SelectedEvent.NonprofitName;
            EventName.Text = SelectedEvent.EventName;
            EventDate.Text = SelectedEvent.EventDate.ToString();

            if (SelectedEvent.Attended == "Y")
            {
                Attended.Text = "You attended this event!";
            }
            else
            {
                Attended.Text = "You did not event this event.";
            }

            Hours.Text = "Hours Completed: " + SelectedEvent.HoursCompleted.ToString();

            //add restrictions to restrict a volunteer from rating or generating a certificate of achievement
            if ((SelectedEvent.Attended.Equals("N") || SelectedEvent.Attended.Equals("n")) && !SelectedEvent.HoursCompleted.ToString().Equals("0"))
            {
                rateButton.Visibility = ViewStates.Invisible;
                generateButton.Visibility = ViewStates.Invisible;
            }
            else
            {
                rateButton.Click += RateClicked;
                generateButton.Click += GenerateCertificate;
            }
            backButton.Click += GoBack;


        }

        /// <summary>
        /// Proceeds to go to the event rating page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void RateClicked(object sender, EventArgs e)
        {
            var intent = new Intent(this, typeof(EventRatingActivity));
            intent.PutExtra("eventToBeRated", JsonConvert.SerializeObject(SelectedEvent));
            StartActivity(intent);
        }

        /// <summary>
        /// Proceeds to generate a certificate of achievement for a volunteer
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void GenerateCertificate(object sender, EventArgs e)
        {
            //Retrieve the volunteer cert image and configure settings
            ImageView volunesiaImage = FindViewById<ImageView>(Resource.Id.volunesiaLogoImage);
            Bitmap bitmap = BitmapFactory.DecodeResource(this.Resources, Resource.Mipmap.volunteercert);
            Bitmap drawableBitmap = bitmap.Copy(Bitmap.Config.Argb8888, true);
            Canvas canvas = new Canvas(drawableBitmap);
            Paint paint = new Paint();
            paint.Color = Color.Black;
            paint.TextSize = 40;
            paint.TextAlign = Paint.Align.Center;

            //Write necessary text such as volunteer first/last names, event name, and amount of hours volunteered
            canvas.DrawText(AppData.CurUser.FirstName + " " + AppData.CurUser.LastName, canvas.Width / 2, (canvas.Height / 3) + 45, paint);
            canvas.DrawText(SelectedEvent.EventName, canvas.Width / 3, (canvas.Height / 2) + 45, paint);
            canvas.DrawText(Hours.Text + " hours", (canvas.Width * 2) / 3, (canvas.Height / 2) + 45, paint);

            //Translate the bitmap into a stream
            MemoryStream stream = new MemoryStream();
            drawableBitmap.Compress(Bitmap.CompressFormat.Jpeg, 0, stream);
            stream.Position = 0;

            //Call the send cert method while passing the stream and the volunteer's email address
            AndroidEmailHandler emailHandler = new AndroidEmailHandler();
            bool certificateSent = emailHandler.SendCertificateOfAchievementViaEmail(stream, AppData.CurUser.EmailAddress);

            //Notify the volunteer if the certificate of achievement has been sent to their particular email address
            string messageText = "";
            if (!certificateSent)
            {
                messageText = "ERROR, could not send certificate of achievement to email address";
            }
            else
            {
                messageText = "SUCCESS, certificate of achievement has been sent to " + AppData.CurUser.EmailAddress;
            }

            AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
            dialogAlertConstruction.SetTitle("Certificate of Achievement Status");
            dialogAlertConstruction.SetMessage(messageText);

            dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
            {

                dialogAlertConstruction.Dispose();

            });
            dialogAlertConstruction.Show();
        }

        /// <summary>
        /// Proceeds to go back to the volunteer events activity page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void GoBack(object sender, EventArgs e)
        {
            StartActivity(typeof(VolunteerEventsActivity));
        }
    }
}