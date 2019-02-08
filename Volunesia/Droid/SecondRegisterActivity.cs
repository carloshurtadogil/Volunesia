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

namespace Volunesia.Droid
{
    [Activity(Label = "SecondRegisterActivity")]
    public class SecondRegisterActivity : Activity, IOnCompleteListener
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public EditText emailAddress { get; set; }
        public EditText password { get; set; }
        public EditText confirmPassword { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.SecondRegister);

            //Get first name and last name from last activity
            FirstName = Intent.GetStringExtra("firstName");
            LastName = Intent.GetStringExtra("lastName");


            emailAddress = FindViewById<EditText>(Resource.Id.emailAddressField);
            password = FindViewById<EditText>(Resource.Id.passwordField);
            confirmPassword = FindViewById<EditText>(Resource.Id.confirmPasswordField);

            Button registerButton = FindViewById<Button>(Resource.Id.registerButton);

            registerButton.Click += ValidateRegistrationInformation;
        }

        //Validates the user's entered information: password, confirmation password, and email address
        public void ValidateRegistrationInformation(object sender, EventArgs e)
        {
            bool passwordSuccess = true;
            bool emailSuccess = true;


            CredentialsVerification credVerification = new CredentialsVerification();
            if (!credVerification.CheckIfPasswordsMatch(password.Text, confirmPassword.Text))
            {
                passwordSuccess = false;
            }

            if (!credVerification.CheckIfEmailIsValid(emailAddress.Text))
            {
                emailSuccess = false;
            }

            //If both password and email address succeed at entry, then perform Firebase authentication
            //to ensure that the email address is not taken
            if (passwordSuccess && emailSuccess)
            {
                AppData_Droid.GetInstance(this);
                AppData_Droid.Auth.CreateUserWithEmailAndPassword(emailAddress.Text, password.Text)
                    .AddOnCompleteListener(this, this);
            }
        }

        public void OnComplete(Task task)
        {
            //If Firebase authentication works, then navigate to the RegisterActivity to select
            //choice as a volunteer or nonprofit
            if (task.IsSuccessful == true)
            {
                var credentialsIntent = new Intent(this, typeof(RegisterActivity));
                credentialsIntent.PutExtra("firstName", FirstName);
                credentialsIntent.PutExtra("lastName", LastName);
                credentialsIntent.PutExtra("emailAddress", emailAddress.Text);
                credentialsIntent.PutExtra("password", password.Text);
                StartActivity(credentialsIntent);
            }
            //if authentication, doesn't work notify the user through an AlertDialog
            else
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Authentication failure");
                dialogAlertConstruction.SetMessage("Email entered is already in use");

                dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                {

                    dialogAlertConstruction.Dispose();

                });
                dialogAlertConstruction.Show();
            }
        }
    }
}