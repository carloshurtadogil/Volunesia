using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Gms.Tasks;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using FireSharp.Interfaces;
using FireSharp.Response;
using Volunesia.Droid.Service;
using Volunesia.Services;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "ChangeEmailPasswordActivity")]
    public class ChangeEmailActivity : Activity, IOnCompleteListener
    {
        public EditText DefaultEmailAddressField { get; set; }
        public EditText EmailAddressField { get; set; }
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.ChangeEmail);

            DefaultEmailAddressField = FindViewById<EditText>(Resource.Id.editText1);
            DefaultEmailAddressField.Text = AppData.CurUser.EmailAddress;

            EmailAddressField = FindViewById<EditText>(Resource.Id.changeEmailAddressField);

            Button changeEmailButton = FindViewById<Button>(Resource.Id.changeEmailAddressButton);

            changeEmailButton.Click += CheckForEmailValidation;

        }

        /// <summary>
        /// Responsible for validating a newly entered email address, before proceeding to
        /// changing it
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void CheckForEmailValidation(object sender, EventArgs e)
        {
            CredentialsVerification credVer = new CredentialsVerification();
            StringBuilder errorMessages = new StringBuilder();
            //Checks if the email address is empty
            if (string.IsNullOrEmpty(EmailAddressField.Text))
            {
                errorMessages.Append("Email address is currently empty");
            }
            //Checks if the email address is similar to the one that the user already has
            else if (EmailAddressField.Text.Equals(AppData_Droid.Auth.CurrentUser.Email))
            {
                errorMessages.Append("Cannot change email address to existing email address");
            }
            //Checks if the email address is written in invalid format
            else if (!credVer.CheckIfEmailIsValid(EmailAddressField.Text))
            {
                errorMessages.Append("Entered email address has an invalid format");
            }

            //Proceeds to make an AlertDialog to showcase email update failures, if its not empty
            if (!string.IsNullOrEmpty(errorMessages.ToString()))
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Email change failure");
                dialogAlertConstruction.SetMessage(errorMessages.ToString());

                dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                {

                    dialogAlertConstruction.Dispose();

                });
                dialogAlertConstruction.Show();
            }
            //Else, proceed to update the user's email address
            else
            {
                AppData_Droid.Auth.CurrentUser.UpdateEmail(EmailAddressField.Text).AddOnCompleteListener(this, this);
            }
                
        }

        /// <summary>
        /// Executes once email update in the authentication portion is finished
        /// </summary>
        /// <param name="task"></param>
        public void OnComplete(Task task)
        {
            if (task.IsSuccessful)
            {
                AppData.CurUser.EmailAddress = EmailAddressField.Text;

                Dictionary<string, object> volunteerUserInformation = new Dictionary<string, object>();
                volunteerUserInformation.Add("email", AppData.CurUser.EmailAddress);
                volunteerUserInformation.Add("first", AppData.CurUser.FirstName);
                volunteerUserInformation.Add("last", AppData.CurUser.LastName);
                volunteerUserInformation.Add("personalstatement", AppData.CurUser.PersonalStatement);
                volunteerUserInformation.Add("type", AppData.CurUser.UserType);
                volunteerUserInformation.Add("level", AppData.CurVolunteer.Level);
                volunteerUserInformation.Add("xp", AppData.CurVolunteer.Experience);

                var changeEmailInFBTask = System.Threading.Tasks.Task.Run(async () => {

                    return await ChangeEmailAsync(volunteerUserInformation);

                });
                var Result = changeEmailInFBTask.Result;
                StartActivity(typeof(SettingsActivity));
            }
            //showcase an error dialog
            else
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Email change failure");
                dialogAlertConstruction.SetMessage("Failed to change email address, email already in use");

                dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                {

                    dialogAlertConstruction.Dispose();

                });
                dialogAlertConstruction.Show();
            }
        }

        /// <summary>
        /// Change a user's email address in Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> ChangeEmailAsync(Dictionary<string, object> volunteerUserInformation)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            FirebaseResponse updateEmailResponse = await firebaseClient.SetAsync("users/" + AppData.CurUser.UID, volunteerUserInformation);            
            return updateEmailResponse.Body;
        }
    }
}