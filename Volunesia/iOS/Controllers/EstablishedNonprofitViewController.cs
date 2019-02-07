using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class EstablishedNonprofitViewController : UIViewController
    {
        private string Name;
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
            Name = r.CreateUser("Carlos", "Hurtado", "catest@test.com", "Test.123", "NP", this);
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
    }
}