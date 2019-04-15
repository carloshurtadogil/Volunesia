using System;
using System.Collections.Generic;
using Foundation;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class PastEventsDataSource : UITableViewSource
    {
        public UIViewController HomeController;

        public PastEventsDataSource(UIViewController inpViewController)
        {
            HomeController = inpViewController;
        }

        public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
        {
            AppData_iOS.GetInstance();
            UITableViewCell cell = tableView.DequeueReusableCell("EventItem");
            List<VolunteerEvent> e = AppData.VolunteerHistory.VolunteerEvents;
            if(indexPath.Row < e.Count)
            {
                VolunteerEvent ve = e[indexPath.Row];
                System.Diagnostics.Debug.WriteLine("Row: " + indexPath.Row);
                cell.TextLabel.Text = ve.EventName + " with " + ve.NonprofitName;
                cell.DetailTextLabel.Text = e[indexPath.Row].EventDate.ToString();
            }
            return cell;
        }

        public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
        {
            int i = indexPath.Row;
            if(AppData.VolunteerHistory != null  && AppData.VolunteerHistory.Size() > 0) 
            {
                if(i < AppData.VolunteerHistory.Size())
                {
                    string npid = AppData.VolunteerHistory.VolunteerEvents[i].NonprofitID;
                    string eventid = AppData.VolunteerHistory.VolunteerEvents[i].EventID;
                    FirebaseReader.ReadEvent(npid, eventid, HomeController, true);

                } 
            }

            //AlertShow.Show(HomeController, "View Event Controller", "To be implemented");
        }

        public override nint RowsInSection(UITableView tableview, nint section)
        {
            AppData_iOS.GetInstance();
            if(AppData.VolunteerHistory != null) 
            {
                return AppData.VolunteerHistory.Size();
            }
            return 0;
        }
    }
}
