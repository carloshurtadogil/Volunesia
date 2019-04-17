using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Services
{
    public class EventCreationVerification
    {
        public StringBuilder ErrorMessages { get; set; }


        public EventCreationVerification()
        {
            ErrorMessages = new StringBuilder();
        }


        /// <summary>
        /// Verifies the details of a-to-be created event
        /// </summary>
        /// <returns></returns> 
        public void VerifyEventCreationDetails(string eventDate, string eventEndDate, string applicationDeadline, string eventName)
        {
            //checks if the event name is empty
            if (string.IsNullOrEmpty(eventName))
            {
                ErrorMessages.Append("Event name is empty");
            }
            //checks if any of the event date fields are empty
            if (string.IsNullOrEmpty(eventDate) || string.IsNullOrEmpty(eventEndDate) || string.IsNullOrEmpty(applicationDeadline))
            {
                ErrorMessages.Append("At least one event date field is empty");
            }
            else
            {
                string result = VerifyEventDateComponents(eventDate, eventEndDate, applicationDeadline);
                if (result.Equals("ApplicationDeadlineLessThanEventDateFailed"))
                {
                    ErrorMessages.Append("The application deadline cannot be greater than the event start date");
                }
                else if(result.Equals("EventDateLessThanEventEndDateFailed"))
                {
                    ErrorMessages.Append("The event date cannot be greater than the event end date");
                }
                else if (result.Equals("InvalidDateTimeFormat"))
                {
                    ErrorMessages.Append("One of the event date fields contain an invalid date format");
                }
                
            }
        }

        /// <summary>
        /// Verifies the event date, event end date, and application deadline
        /// through a series of tests
        /// </summary>
        /// <param name="eventDate"></param>
        /// <param name="eventEndDate"></param>
        /// <returns>string</returns>
        public string VerifyEventDateComponents(string eventDate, string eventEndDate, string applicationDeadline)
        {
            DateTime actualEventDate, actualEventEndDate, actualApplicationDeadline;
            if(DateTime.TryParse(eventDate, out actualEventDate ) && DateTime.TryParse(eventEndDate, out actualEventEndDate) && DateTime.TryParse(applicationDeadline, out actualApplicationDeadline))
            {
                if(DateTime.Compare(actualApplicationDeadline, actualEventDate) < 0)
                {
                    if (DateTime.Compare(actualEventDate, actualEventEndDate) < 0)
                    {
                        return "EventDateLessThanEventEndDateSucceeded";
                    }
                    return "EventDateLessThanEventEndDateFailed";
                }

                return "ApplicationDeadlineLessThanEventDateFailed";
                
            }
            return "InvalidDateTimeFormat";
        }

    }
}
