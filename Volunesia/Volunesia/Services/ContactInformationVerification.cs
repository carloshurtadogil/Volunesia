using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace Volunesia.Services
{
    public class ContactInformationVerification
    {

        public StringBuilder errorMessages;

        public ContactInformationVerification()
        {
            errorMessages = new StringBuilder();
        }


        //Verifies all of the school nonprofit's entered information at registration
        //returns the error messages in a string if there is any
        public string VerifyAllInformationForSchoolNonprofit(string ein, string schoolName, string city, string state, string zipCode, string phoneNumber)
        {
            if (!ValidateSchoolName(schoolName))
            {
                errorMessages.Append("Incorrect organization name");
            }
            if (!ValidatePhoneNumber(phoneNumber))
            {
                errorMessages.Append("Incorrect phone number format");
            }
            if (!ValidateState(state))
            {
                errorMessages.Append("Incorrect state abbreviation entered");
            }
            if (!ValidateZipCode(zipCode))
            {
                errorMessages.Append("Incorrect zip code entered");
            }

            return errorMessages.ToString();
        }




        //Verifies all of the established nonprofit's entered information at registration
        //returns the error messages in a string if there is any
        public string VerifyAllInformationForEstablishedNonprofit(string ein, string organizationName, string city, string state, string zipCode, string phoneNumber)
        {
            if (!ValidateOrganizationName(organizationName))
            {
                errorMessages.Append("Incorrect organization name");
            }
            if (!ValidatePhoneNumber(phoneNumber))
            {
                errorMessages.Append("Incorrect phone number format");
            }
            if (!ValidateState(state))
            {
                errorMessages.Append("Incorrect state abbreviation entered");
            }
            if (!ValidateZipCode(zipCode))
            {
                errorMessages.Append("Incorrect zip code entered");
            }

            return errorMessages.ToString();
        }


        //Validates a nonprofit's state
        public bool ValidateState(string state)
        {
            if (state.Length == 2)
            {
                var stateCollection = (Enum.GetValues(typeof(States)).Cast<States>()).Where(x=>x.Equals(state));
                if (stateCollection != null)
                {
                    return true;
                }
            }
            return false;
        }


        //Validates a nonprofit's zip code
        public bool ValidateZipCode(string zipCode)
        {
            string usZipCodePattern = "^[0-9]{5}(?:-[0-9]{4})?$";
            if(Regex.IsMatch(zipCode, usZipCodePattern))
            {
                return true;
            }
            return false;
        }

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
        
        //Validates a nonprofit organization name
        public bool ValidateOrganizationName(string organizationName)
        {
            if (organizationName.Length > 1)
            {
                return true;
            }
            return false;
        }

        //Validates a school nonprofit's name
        public bool ValidateSchoolName(string schoolName)
        {
            if(schoolName.Length > 1)
            {
                return true;
            }
            return false;
        }

        //Enumeration for all 50 states
        public enum States
        {
            AL,
            AK,
            AR,
            AZ,
            CA,
            CO,
            CT,
            DC,
            DE,
            FL,
            GA,
            HI,
            IA,
            ID,
            IL,
            IN,
            KS,
            KY,
            LA,
            MA,
            MD,
            ME,
            MI,
            MN,
            MO,
            MS,
            MT,
            NC,
            ND,
            NE,
            NH,
            NJ,
            NM,
            NV,
            NY,
            OK,
            OH,
            OR,
            PA,
            RI,
            SC,
            SD,
            TN,
            TX,
            UT,
            VA,
            VT,
            WA,
            WI,
            WV,
            WY
        }
    }
}
