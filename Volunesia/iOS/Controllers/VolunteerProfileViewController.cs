using Foundation;
using System;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class VolunteerProfileViewController : UIViewController
    {
        public VolunteerProfileViewController (IntPtr handle) : base (handle)
        {
        }

        /// <summary>
        /// Load the information and other functionalities
        /// </summary>
        /// <param name="animated">If set to <c>true</c> animated.</param>
        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            LoadInformation();
            DismissKeyboardHandler();
        }

        /// <summary>
        /// Load the user's information to the profile view
        /// </summary>
        public void LoadInformation()
        {
            User currUser = AppData.CurUser;
            NameLabel.Text = currUser.FirstName + " " + currUser.LastName;
            AlertShow.Print("Personal Statement: " + currUser.PersonalStatement);
            if(string.IsNullOrEmpty(currUser.PersonalStatement))
            {
                PersonalStatementTextview.Text = "Click the edit button to add a personal statement, if you'd like";
            }
            else
            {
                PersonalStatementTextview.Text = currUser.PersonalStatement;
            }

            if(AppData.CurVolunteer != null)
            {
                ExperienceLabel.Text = "Experience: " + AppData.CurVolunteer.Experience;
                LevelLabel.Text = "Level: " + AppData.CurVolunteer.Experience;
            }
        }

        /// <summary>
        /// Loads the functions of this page
        /// </summary>
        public void LoadFunctions()
        {
            UISwipeGestureRecognizer recognizer = new UISwipeGestureRecognizer(OnSwipe);
            recognizer.Direction = UISwipeGestureRecognizerDirection.Down;
            View.AddGestureRecognizer(recognizer);
        }

        /// <summary>
        /// Dismisses the current view controller
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        /// <summary>
        /// Dismiss the current view controller with a single swipe downward
        /// </summary>
        private void OnSwipe()
        {
            System.Diagnostics.Debug.WriteLine("OnSwip() Called");
            this.DismissViewController(true, null);
        }

        /// <summary>
        /// Dismiss any keyboards with a click on the current view controller
        /// </summary>
        private void DismissKeyboardHandler()
        {
            var g = new UITapGestureRecognizer(() => View.EndEditing(true));
            g.CancelsTouchesInView = false; //for iOS5

            View.AddGestureRecognizer(g);
        }
    }
}