using Foundation;
using System;
using System.Text.RegularExpressions;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;

namespace Volunesia.iOS
{
    public partial class SchoolNPViewController : UIViewController
    {
        //User attributes
        public User User { get; set; }
        public string Password { get; set; }

        public SchoolNPViewController (IntPtr handle) : base (handle)
        {
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        { 
            if (ValidInfo())
            {
                Register r = new Register();
                string orgname = OrganizationNameTextfield.Text.Trim();
                string school = SchoolNameTextfield.Text.Trim();
                string phone = PhoneTextfield.Text.Trim();
                string zip = ZipTextfield.Text.Trim();
                string city = CityTextfield.Text.Trim();
                string state = StateTextfield.Text.Trim();

                r.NPName = orgname;
                r.School = school;
                r.Phone = phone;
                r.Zip = zip;
                r.City = city;
                r.State = state;
                r.NPType = "school";

                r.CreateUser(User, Password, this);
            }
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }




        public bool ValidOrgName()
        {
            string org = OrganizationNameTextfield.Text.Trim();
            if(org.Length < 3)
            {
                AlertShow.Show(this, "Invalid Organization Name", "Please enter a valid organization name."); 
            }
            return true;
        }

        public bool ValidSchoolName()
        {
            string school = SchoolNameTextfield.Text.Trim();
            if(school.Length < 3)
            {
                AlertShow.Show(this, "Invalid School Name", "Please enter a valid school name.");
                return false; 
            }
            return true;
        }

        public bool ValidPhone()
        {
            string phone = Regex.Replace(PhoneTextfield.Text, @"\s", "");//Remove whitespaces
            if(phone.Length != 10) 
            {
                AlertShow.Show(this, "Invalid Phone", "Please enter a valid phone number.");
                return false;
            }
            return true;
        }

        public bool VerifyZip()
        {//To be continued
            string zip = ZipTextfield.Text.Trim();
            if ((zip.Length >= 5) && (zip.Length <= 10))
            {
                //AlertShow.Show(this, "Invalid Zip", "Please enter a valid zip code.");
                return true;
            }

            return false;
        }

        public bool VerifyCity()
        {
            string city = CityTextfield.Text.Trim();
            if (city.Length > 0)
            {
                //AlertShow.Show(this, "Invalid City", "Please enter a valid city name");
                return true;
            }
            return false;
        }

        public bool ValidInfo()
        {
            if(ValidOrgName() && ValidSchoolName() && ValidPhone() && VerifyZip() && VerifyCity())
            {
                return true; 
            }
            return false;
        }
    }
}