using Foundation;
using System;
using UIKit;
using Volunesia.Models;
using Volunesia.iOS.Services;

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

            if (segue.Identifier == "EstablishedWelcomeSegue_id")
            {
                var wvc = (WelcomeViewController)segue.DestinationViewController;
                if (wvc != null)
                {
                    wvc.SetName(User.FirstName);
                    wvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "EstablishedNonprofitViewController.cs");
            }
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            //VerifyZip();
            Register r = new Register();
            if(ValidInfo())
            {


                string orgname = OrganizationNameTextfield.Text.Trim();
                string ein = EINTextfield.Text.Trim();
                string phone = PhoneTextfield.Text.Trim();
                string zip = ZipCodeTextfield.Text.Trim();
                string city = CityTextfield.Text.Trim();
                string state = StateTextfield.Text.Trim();

                r.NPName = orgname;
                r.EIN = ein;
                r.Phone = phone;
                r.Zip = zip;
                r.City = city;
                r.State = state;
                r.NPType = "established";

                r.CreateUser(User, Password, this);


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