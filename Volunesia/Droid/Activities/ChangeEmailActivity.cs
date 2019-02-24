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
using Volunesia.Services;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "ChangeEmailPasswordActivity")]
    public class ChangeEmailActivity : Activity, IOnCompleteListener
    {
        public EditText EmailAddressField { get; set; }
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.ChangeEmail);

            EmailAddressField = FindViewById<EditText>(Resource.Id.changeEmailAddressField);

            Button changeEmailButton = FindViewById<Button>(Resource.Id.changeEmailAddressButton);

            changeEmailButton.Click += ChangeEmailAddress;

        }

        public void ChangeEmailAddress(object sender, EventArgs e)
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

            //Proceeds to make an AlertDialog to showcase email update failures
            if (string.IsNullOrEmpty(errorMessages.ToString()))
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

        public void OnComplete(Task task)
        {
            if (task.IsSuccessful)
            {
                Console.WriteLine("Email address has been changed");
                //StartActivity(typeof(SettingsActivity));
            }
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
    }
}