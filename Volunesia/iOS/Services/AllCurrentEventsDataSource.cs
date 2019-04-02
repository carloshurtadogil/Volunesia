using System;
using System.Collections.Generic;
using Foundation;
using UIKit;
using Volunesia.Models;

namespace Volunesia.iOS.Services
{
    public class AllCurrentEventsDataSource : UITableViewSource
    {
        private UIViewController HomeView { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="T:Volunesia.iOS.Services.AllCurrentEventsDataSource"/> class.
        /// </summary>
        public AllCurrentEventsDataSource(HomeViewController hvc)
        {
            HomeView = hvc;
            FirebaseReader.ReadAllAvailableEvents();
        }

        /// <summary>
        /// Populate the cells individually
        /// </summary>
        /// <returns>The cell.</returns>
        /// <param name="tableView">Table view.</param>
        /// <param name="indexPath">Index path.</param>
        public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
        {
            UITableViewCell cell = tableView.DequeueReusableCell("EventItem");
            if (AppData_iOS.CurrentEvents != null)
            {
                AlertShow.Print("Get Cell Good to Go");
                List<Event> e = AppData_iOS.CurrentEvents;
                int index = indexPath.Row;
                if (index < e.Count)
                {
                    Event eve = e[index];
                    cell.TextLabel.Text = eve.EventName;
                    cell.DetailTextLabel.Text = eve.EventDate.ToShortDateString();
                }
            }
            else
            {
                AlertShow.Print("Get Cell Null and Bad");
            }
            return cell;
        }

        /// <summary>
        /// The amount of all current events found in Firebase
        /// </summary>
        /// <returns>The in section.</returns>
        /// <param name="tableview">Tableview.</param>
        /// <param name="section">Section.</param>
        public override nint RowsInSection(UITableView tableview, nint section)
        {
            if(AppData_iOS.CurrentEvents != null) 
            {
                return AppData_iOS.CurrentEvents.Count;
            }
            return 0;
        }

        /// <summary>
        /// Transition to the EventViewController with the selected Event information
        /// </summary>
        /// <param name="tableView">Table view.</param>
        /// <param name="indexPath">Index path.</param>
        public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
        {
            //base.RowSelected(tableView, indexPath);
            int i = indexPath.Row;

            if (AppData_iOS.CurrentEvents != null)
            {
                if (i < AppData_iOS.CurrentEvents.Count)
                {
                    Event e = AppData_iOS.CurrentEvents[i];
                    HomeViewController hvc = (HomeViewController)HomeView;
                    hvc.SelectedEvent = e;
                    hvc.PerformSegue("ToEventsFromHome_id", HomeView);
                    AlertShow.Show(HomeView, "Event Selected: " + e.EventName, "");
                }
            }
        }
    }
}
