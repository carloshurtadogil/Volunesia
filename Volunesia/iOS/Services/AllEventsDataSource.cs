using System;
using System.Collections.Generic;
using Foundation;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class AllEventsDataSource : UITableViewSource
    {
        public UIViewController HomeController;
        public bool SpecificNonprofit;

        public AllEventsDataSource(UIViewController inpView)
        {
            HomeController = inpView;
            SpecificNonprofit = false;
        }

        public AllEventsDataSource(UIViewController inpView, bool type) 
        {
            AppData_iOS.SortNonprofitEventsByDate();
            HomeController = inpView;
            SpecificNonprofit = type;
        }

        public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
        {
            AppData_iOS.GetInstance();
            UITableViewCell cell = tableView.DequeueReusableCell("EventItem");
            List<Event> e = AppData_iOS.NonprofitEvents;
            if (indexPath.Row < e.Count)
            {
                Event ve = e[indexPath.Row];
                System.Diagnostics.Debug.WriteLine("Row: " + indexPath.Row);
                cell.TextLabel.Text = ve.EventName;
                cell.DetailTextLabel.Text = e[indexPath.Row].EventDate.ToString();
            }
            return cell;
        }

        public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
        {
            //base.RowSelected(tableView, indexPath);
            AlertShow.Show(HomeController, "View Event Controller", "To be implemented");
        }

        public override nint RowsInSection(UITableView tableview, nint section)
        {
            if(AppData_iOS.NonprofitEvents != null)
            {
                AlertShow.Print("Returning " + AppData_iOS.NonprofitEvents.Count + " rows");
                return AppData_iOS.NonprofitEvents.Count; 
            }
            return 0;
        }

        /// <summary>
        /// Populate the specified cell if for nonprofits
        /// </summary>
        /// <returns>The event cell.</returns>
        /// <param name="tableView">Table view.</param>
        /// <param name="indexPath">Index path.</param>
        public UITableViewCell NonprofitEventCell(UITableView tableView, NSIndexPath indexPath)
        {
            UITableViewCell cell = tableView.DequeueReusableCell("NonprofitEventItem");
            List<Event> e = AppData_iOS.NonprofitEvents;
            if (indexPath.Row < e.Count)
            {
                Event ve = e[indexPath.Row];
                System.Diagnostics.Debug.WriteLine("Row: " + indexPath.Row);
                cell.TextLabel.Text = ve.EventName;
                cell.DetailTextLabel.Text = e[indexPath.Row].EventDate.ToString();
            }
            return cell;
        }
    }
}
