using Foundation;
using System;
using System.Text.RegularExpressions;
using UIKit;
using Volunesia.iOS.Services;
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

        //Prepare for mission statement page
        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            if(ValidInfo())
            {
                this.PerformSegue("LocalToMSSegue_id", sender);
                string zip = ZipTextfield.Text.Trim();
                string city = CityTextfield.Text.Trim();
                string state = StateTextfield.Text.Trim();
                string address = city + ", " + state + " " + zip;
#pragma warning disable CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
                AddressHandler.ValidateAddress(this, address, "LocalToMSSegue_id");
#pragma warning restore CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
            }
        }

        //Prepare attributes for next page
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "LocalToMSSegue_id")
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
                    msvc.NPType = "local";

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