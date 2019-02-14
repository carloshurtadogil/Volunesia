using Foundation;
using System;
using UIKit;
using Volunesia.Models;
using Volunesia.iOS.Services;
using System.Text.RegularExpressions;

namespace Volunesia.iOS
{
    public partial class EstablishedNonprofitViewController : UIViewController
    {
        //User attributes
        public User User { get; set; }
        public string Password  { get; set; }


        public EstablishedNonprofitViewController(IntPtr handle) : base(handle)
        {
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "EstablishedToMSSegue_id")
            {
                var msvc = (MissionStatementViewController)segue.DestinationViewController;
                if (msvc != null)
                {
                    string orgname = OrganizationNameTextfield.Text.Trim();
                    string ein = EINTextfield.Text.Trim();
                    string phone = Regex.Replace(PhoneTextfield.Text, @"\s", "");
                    string zip = ZipCodeTextfield.Text.Trim();
                    string city = CityTextfield.Text.Trim();
                    string state = StateTextfield.Text.Trim();

                    msvc.CurrentUser = User;
                    msvc.Password = Password;
                    msvc.EIN = ein;
                    msvc.NPName = orgname;
                    msvc.Phone = phone;
                    msvc.Zip = zip;
                    msvc.City = city;
                    msvc.State = state;
                    msvc.NPType = "established";

                    msvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "EstablishedNonprofitViewController.cs");
            }
        }


        //Continue to mission statement page
        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            if(ValidInfo())
            {
                this.PerformSegue("EstablishedToMSSegue_id", sender);
            }

        }

        public bool VerifyCity()
        {
            string city = CityTextfield.Text.Trim();
            if (city.Length > 0)
            {

                return true;
            }
            return false;
        }

        public bool ValidName()
        {
            string name = OrganizationNameTextfield.Text.Trim();
            if (name.Length > 2)
            {
                return true;
            }

            return false;
        }

        public bool VerifyEIN() //To be continued
        {
            string ein = EINTextfield.Text.Trim();

            if (ein.Length == 10)
            {
                return true;
            }

            return false;
        }

        public bool VerifyZip()
        {//To be continued
            string zip = ZipCodeTextfield.Text.Trim();
            if ((zip.Length >= 5) && (zip.Length <= 10))
            {
                return true;
            }

            return false;
        }

        public bool ValidInfo()
        {
            if (!VerifyEIN())
            {
                AlertShow.Show(this, "Invalid EIN", "Pleaser enter a valid EIN");
                return false;
            }
            if (!ValidName())
            {
                AlertShow.Show(this, "Invalid Name", "Pleaser enter a valid organization name");
                return false; 
            }

            if(!VerifyZip()) 
            {
                AlertShow.Show(this, "Invalid ZIP", "Pleaser enter a valid zip code.");
                return false;
            }



            return true;
        }
    }
}