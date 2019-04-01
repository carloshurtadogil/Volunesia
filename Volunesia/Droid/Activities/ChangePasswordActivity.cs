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
    [Activity(Label = "ChangePasswordActivity")]
    public class ChangePasswordActivity : Activity, IOnCompleteListener
    {
        public EditText ChangePasswordField { get; set; }
        public EditText ChangeConfirmPasswordField { get; set; }


        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.ChangePassword);

            ChangePasswordField = FindViewById<EditText>(Resource.Id.changePasswordField);
            ChangeConfirmPasswordField = FindViewById<EditText>(Resource.Id.changeConfirmPasswordField);


            Button changePasswordButton = FindViewById<Button>(Resource.Id.changePasswordButton);

            changePasswordButton.Click += ChangePassword;


            // Create your application here
        }
        public void ChangePassword(object sender, EventArgs e)
        {
            StringBuilder errorMessages = new StringBuilder();

            CredentialsVerification credVer = new CredentialsVerification();
            if (string.IsNullOrEmpty(ChangePasswordField.Text) || string.IsNullOrEmpty(ChangeConfirmPasswordField.Text))
            {
                errorMessages.Append("One of the password fields is empty");

            }
            else if (!(ChangePasswordField.Text).Equals(ChangeConfirmPasswordField))
            {
                errorMessages.Append("Passwords do not match");
            }
            else if (credVer.CheckIfPasswordIsValid(ChangePasswordField.Text))
            {
                errorMessages.Append("Password is not appropriate length");
            }

            //If there were no error messages found
            if (string.IsNullOrEmpty(errorMessages.ToString()))
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Password change failure");
                dialogAlertConstruction.SetMessage(errorMessages.ToString());

                dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                {

                    dialogAlertConstruction.Dispose();

                });
                dialogAlertConstruction.Show();
            }
            else
            {
                AppData_Droid.Auth.CurrentUser.UpdatePassword(ChangePasswordField.Text).AddOnCompleteListener(this, this);
            }
        }


        public void OnComplete(Task task)
        {
            if (task.IsSuccessful)
            {
                StartActivity(typeof(SettingsActivity));
            }
            else
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Password change failure");
                dialogAlertConstruction.SetMessage("Failed to change password");

                dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                {

                    dialogAlertConstruction.Dispose();

                });
                dialogAlertConstruction.Show();
            }
        }
    }
}