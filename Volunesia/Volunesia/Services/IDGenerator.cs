using System;
namespace Volunesia.Services
{
    public class IDGenerator
    {
        public string GenerateID()
        {
            DateTime t = DateTime.Now;
            TimeSpan ts = DateTime.Now.TimeOfDay;
            return t.Day.ToString() + t.Month.ToString() + t.Year.ToString() + 
                   ts.Hours.ToString() + ts.Minutes.ToString() + ts.Seconds.ToString() + ts.Milliseconds.ToString();

        }

        public string GenerateEstablishedID(string ein)
        {
            string id = ein + GenerateID();
            return id;
        }
    }
}
