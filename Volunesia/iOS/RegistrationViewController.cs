using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class RegistrationViewController : UIViewController
    {
        public RegistrationViewController (IntPtr handle) : base (handle)
        {
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            DismissViewController(true, null);
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToTypeOptionSegue_id", sender);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "ToTypeOptionSegue_id")
            {
                var utsc = (UserTypeSelectionController)segue.DestinationViewController;
                if (utsc != null)
                {
                    utsc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Failed", "");
            }
        }

    }
}