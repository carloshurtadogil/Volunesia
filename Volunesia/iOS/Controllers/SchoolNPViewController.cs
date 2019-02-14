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

        //Continue to mission statement page
        partial void ContinueButton_TouchUpInside(UIButton sender)
        { 
            if (ValidInfo())
            {
                this.PerformSegue("SchoolToMSSegue_id", sender);
            }
        }

        //Return to nonprofit type view
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        //Prepare attributes for next page
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "SchoolToMSSegue_id")
            {
                var msvc = (MissionStatementViewController)segue.DestinationViewController;
                if (msvc != null)
                {
                    string orgname = OrganizationNameTextfield.Text.Trim();
                    string phone = Regex.Replace(PhoneTextfield.Text, @"\s", "");
                    string zip = ZipTextfield.Text.Trim();
                    string city = CityTextfield.Text.Trim();
                    string state = StateTextfield.Text.Trim();

                    msvc.CurrentUser = User;
                    msvc.Password = Password;
                    msvc.NPName = orgname;
                    msvc.Phone = phone;
                    msvc.Zip = zip;
                    msvc.City = city;
                    msvc.State = state;
                    msvc.NPType = "school";

                    msvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "EstablishedNonprofitViewController.cs");
            }
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