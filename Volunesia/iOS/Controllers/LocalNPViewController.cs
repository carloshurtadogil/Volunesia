using Foundation;
using System;
using System.Text.RegularExpressions;
using UIKit;
using Volunesia.Models;

namespace Volunesia.iOS
{
    public partial class LocalNPViewController : UIViewController
    {
        public User User { get; set; }
        public string Password { get; set; }

        public LocalNPViewController (IntPtr handle) : base (handle)
        {
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            throw new NotImplementedException();
        }

        public bool ValidOrgName()
        {
            string org = OrganizationNameTextfield.Text.Trim();
            if (org.Length < 3)
            {
                AlertShow.Show(this, "Invalid Organization Name", "Please enter a valid organization name.");
            }
            return true;
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        public bool ValidPhone()
        {
            string phone = Regex.Replace(PhoneTextfield.Text, @"\s", "");//Remove whitespaces
            if (phone.Length != 10)
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
            if (ValidOrgName() && ValidPhone() && VerifyZip() && VerifyCity())
            {
                return true;
            }
            return false;
        }
    }
}