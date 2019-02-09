using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;

namespace Volunesia.Services
{
    public class ContactInformationVerification
    {
        //Validates a phone number based on the US phone number system by checking its format 
        public bool ValidatePhoneNumber(string phoneNumber)
        {
            Regex phoneRegex = new Regex(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$");

            if (phoneRegex.IsMatch(phoneNumber))
            {
                string formattedPhoneNumber = phoneRegex.Replace(phoneNumber, "($1) $2-$3");
                return true;
            }
            return false;

        }

        public void ValidateOrganizationName()
        {

        }
    }
}
