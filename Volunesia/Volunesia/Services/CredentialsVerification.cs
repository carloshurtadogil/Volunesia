using System;
using System.Text.RegularExpressions;

namespace Volunesia.Services
{
    public class CredentialsVerification
    {
        /// <summary>
        /// Determines if passwords match
        /// </summary>
        /// <returns><c>true</c>, if if passwords match was checked, <c>false</c> otherwise.</returns>
        /// <param name="password">Password.</param>
        /// <param name="confirmPassword">Confirm password.</param>
        public bool CheckIfPasswordsMatch(string password, string confirmPassword)
        {
            if (password.Equals(confirmPassword))
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Determines if the password is at least 8 characters in length
        /// </summary>
        /// <returns><c>true</c>, if if password is valid was checked, <c>false</c> otherwise.</returns>
        /// <param name="password">Password.</param>
        public bool CheckIfPasswordIsValid(string password)
        {
            string pw = Regex.Replace(password, @"\s", "");//Remove whitespaces
            if (pw.Length >= 8)
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Determines if the entered email address is valid or not
        /// </summary>
        /// <returns><c>true</c>, if if email is valid was checked, <c>false</c> otherwise.</returns>
        /// <param name="emailAddress">Email address.</param>
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