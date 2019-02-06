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

namespace Volunesia.Droid
{
    public class CredentialsVerification
    {
        //Determines if passwords match
        public bool CheckIfPasswordsMatch(string password, string confirmPassword)
        {
            if (password.Equals(confirmPassword))
            {
                return true;
            }
            return false;
        }

        //Determines if the entered email address is valid or not
        public bool CheckIfEmailIsValid(string emailAddress)
        {
            try
            {
                var email = new System.Net.Mail.MailAddress(emailAddress);
                
                if (emailAddress.Equals(email.Address))
                {
                    return true;
                }
                return false;
            }
            catch (Exception e)
            {
                return false;
            }
        }
    }
}