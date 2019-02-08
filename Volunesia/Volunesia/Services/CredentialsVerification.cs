using System;
using System.Text.RegularExpressions;

namespace Volunesia.Services
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

        //Determines if the password is at least 8 characters in length
        public bool CheckIfPasswordIsValid(string password)
        {
            string pw = Regex.Replace(password, @"\s", "");//Remove whitespaces
            if (pw.Length >= 8) 
            {
                return true;
            }
            return false;
        }

        //Determines if the entered email address is valid or not
        public bool CheckIfEmailIsValid(string emailAddress)
        {
            string addr = Regex.Replace(emailAddress, @"\s", "");//Remove white spaces
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
                System.Diagnostics.Debug.WriteLine(e.StackTrace);
                return false;
            }
        }
    }
}
