using System;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class VolunteerProfileViewController : UIViewController
    {

        public Volunteer Volunteer { get; set; }

        public int count = 0;
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
            if(AppData.CurUser != null)
            {
                if(AppData.CurUser.UserType == "NP")
                {
                    LoadInformationNp();
                    FirebaseStorageServices.RetrieveImage("/Images/nonprofiteventimages/93ed1f21-428b-4cab-bb03-49a72aa70646", ProfileImageView);
                } 
                else
                {
                    FirebaseReader.ReadVolunteer(AppData.CurUser.UID);

                    if (count == 0)
                    {
                        //EmailHandler.WriteCertificate("");
                        count++;
                    }

                    LoadInformation();
                    LoadBadges();
                }
            }

            DismissKeyboardHandler();

        }

        /// <summary>
        /// Load the user's information to the profile view
        /// </summary>
        public void LoadInformation()
        {
            User currUser = AppData.CurUser;
            NameLabel.Text = currUser.FirstName + " " + currUser.LastName;
            AlertShow.Print("Personal Statement: " + AppData.CurUser.PersonalStatement);
            if(string.IsNullOrEmpty(currUser.PersonalStatement))
            {
                PersonalStatementTextview.Text = "Click the edit button to add a personal statement, if you'd like";
            }
            else
            {
                PersonalStatementTextview.Text = AppData.CurUser.PersonalStatement;
            }

            FirebaseReader.ReadPersonalStatement(AppData.CurUser.UID, PersonalStatementTextview);

            if(AppData.CurVolunteer != null)
            {
                ExperienceLabel.Text = "Experience: " + 99789; //+ AppData.CurVolunteer.Experience;
                LevelLabel.Text = "Level: " + 99; //+ AppData.CurVolunteer.Experience;
            }
        }

        public void LoadInformationNp()
        {
            NameLabel.Text = Volunteer.FirstName + " " + Volunteer.LastName;
            FirebaseReader.ReadPersonalStatement(Volunteer.UID, PersonalStatementTextview);
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
        /// Load badges according to volunteer's level
        /// </summary>
        public void LoadBadges()
        {
            if(AppData.CurVolunteer != null)
            {
                AppData.CurVolunteer.BadgeList.Add(BadgeCategory.Badge.Grandmaster);
                if (AppData.CurVolunteer.BadgeList.Contains(BadgeCategory.Badge.Grandmaster))
                {
                    Badge1.Image = UIImage.FromFile("Badges/noviceBadge.png");
                    Badge2.Image = UIImage.FromFile("Badges/intermediateBadge.png");
                    Badge3.Image = UIImage.FromFile("Badges/advancedBadge.png");
                    Badge4.Image = UIImage.FromFile("Badges/expertBadge.png");
                    Badge5.Image = UIImage.FromFile("Badges/grandmasterBadge.png");
                    Badge1.Hidden = false;
                    Badge2.Hidden = false;
                    Badge3.Hidden = false;
                    Badge4.Hidden = false;
                    Badge5.Hidden = false;
                }
                else if (AppData.CurVolunteer.BadgeList.Contains(BadgeCategory.Badge.Expert))
                {
                    Badge1.Image = UIImage.FromFile("Badges/noviceBadge.png");
                    Badge2.Image = UIImage.FromFile("Badges/intermediateBadge.png");
                    Badge3.Image = UIImage.FromFile("Badges/advancedBadge.png");
                    Badge4.Image = UIImage.FromFile("Badges/expertBadge.png");
                    Badge1.Hidden = false;
                    Badge2.Hidden = false;
                    Badge3.Hidden = false;
                    Badge4.Hidden = false;
                }
                else if (AppData.CurVolunteer.BadgeList.Contains(BadgeCategory.Badge.Advanced))
                {
                    Badge2.Image = UIImage.FromFile("Badges/noviceBadge.png");
                    Badge3.Image = UIImage.FromFile("Badges/intermediateBadge.png");
                    Badge4.Image = UIImage.FromFile("Badges/advancedBadge.png");
                    Badge2.Hidden = false;
                    Badge3.Hidden = false;
                    Badge4.Hidden = false;
                }
                else if (AppData.CurVolunteer.BadgeList.Contains(BadgeCategory.Badge.Intermediate))
                {
                    Badge2.Image = UIImage.FromFile("Badges/noviceBadge.png");
                    Badge3.Image = UIImage.FromFile("Badges/intermediateBadge.png");
                    Badge2.Hidden = false;
                    Badge3.Hidden = false;
                }
                else if (AppData.CurVolunteer.BadgeList.Contains(BadgeCategory.Badge.Novice))
                {
                    Badge3.Image = UIImage.FromFile("Badges/noviceBadge.png");
                    Badge3.Hidden = false;
                }
            }
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