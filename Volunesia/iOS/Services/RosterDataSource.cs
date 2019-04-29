using System;
using System.Collections.Generic;
using Foundation;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class RosterDataSource : UITableViewSource
    {
        private Roster Roster;
        private RosterViewController RosterVC;
        private string EventID;

        /// <summary>
        /// Initializes a new instance of the <see cref="T:Volunesia.iOS.Services.RosterDataSource"/> class.
        /// </summary>
        /// <param name="roster">Roster.</param>
        public RosterDataSource(Roster roster, RosterViewController inpView, string eid)
        {
            Roster = roster;
            RosterVC = inpView;
            EventID = eid;
        }

        /// <summary>
        /// Gets the cell with an Attendee's information
        /// </summary>
        /// <returns>The cell.</returns>
        /// <param name="tableView">Table view.</param>
        /// <param name="indexPath">Index path.</param>
        public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
        {
            UITableViewCell cell = tableView.DequeueReusableCell("AttendeeItem");
            if(Roster.AttendeeList != null) 
            {
                List<Attendee> list = Roster.AttendeeList;
                int index = indexPath.Row;
                if(index < list.Count)
                {
                    Attendee a = list[index];
                    cell.TextLabel.Text = a.Name;
                    cell.DetailTextLabel.Text = a.EmailAddress; 
                }
            }
            return cell;
        }

        /// <summary>
        /// Return the amount of rows for the table view
        /// </summary>
        /// <returns>The in section.</returns>
        /// <param name="tableview">Tableview.</param>
        /// <param name="section">Section.</param>
        public override nint RowsInSection(UITableView tableview, nint section)
        {
            if (Roster.AttendeeList != null)
            {
                return Roster.AttendeeList.Count;
            }
            else
            {
                return 0;//Default case 
            }
        }

        /// <summary>
        /// What to do when a row has been selected
        /// </summary>
        /// <param name="tableView">Table view.</param>
        /// <param name="indexPath">Index path.</param>
        public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
        {
            int i = indexPath.Row;

            if (Roster.AttendeeList != null)
            {
                List<Attendee> list = Roster.AttendeeList;
                int index = indexPath.Row;
                if (index < list.Count)
                {
                    Attendee a = list[index];
                    FirebaseReader.ReadVolunteerInformation(a.UID, RosterVC);
                }
            }
            //AlertShow.Show(HomeController, "View Event Controller", "To be implemented");
        }

        public override UITableViewRowAction[] EditActionsForRow(UITableView tableView, NSIndexPath indexPath)
        {
            int index = indexPath.Row;
            if(index < Roster.AttendeeList.Count)
            {
                Attendee attendee = Roster.AttendeeList[index];
                string npid = AppData.NonprofitRepresentative.AssociatedNonprofit;
                string uid = Roster.AttendeeList[index].UID;
                if (attendee.Attended == false)
                {
                    var action = UITableViewRowAction.Create(
                    UITableViewRowActionStyle.Normal, "Present", (arg1, arg2) => {
                            var cell = tableView.CellAt(arg2);
                            Roster.AttendeeList[index].Attended = true;
                            
                            FirebaseReader.ChangeReservationStatus(npid, EventID, uid, true, RosterVC);
                            AlertShow.Show(RosterVC, "Good to go", attendee.Name + " has been marked present");
                        }
                    );
                    return new UITableViewRowAction[] { action };
                }
                else
                {
                    var action = UITableViewRowAction.Create(
                    UITableViewRowActionStyle.Default, "Absent", (arg1, arg2) => {
                            var cell = tableView.CellAt(arg2);
                            AlertShow.ConfirmAbsence(RosterVC, Roster, index, npid, EventID);
                        }
                    );
                    return new UITableViewRowAction[] { action };
                }
            }
            return null;
        }
    }
}
