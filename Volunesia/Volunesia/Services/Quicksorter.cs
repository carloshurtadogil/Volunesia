using System;
using System.Collections.Generic;
using Volunesia.Models;

namespace Volunesia.Services
{
    public class Quicksorter
    {
        /// <summary>
        /// Use a recursive method to sort the data by date
        /// </summary>
        /// <param name="list">List to be sorted.</param>
        /// <param name="low">Low.</param>
        /// <param name="high">High.</param>
        public static void SortByDate(List<Event> list, int low, int high)
        {
            if(list.Count > 0) 
            {
                int i = low, j = high;
                DateTime pivot = list[0].EventDate;//Select median
                while (i <= j)
                {
                    while (list[i].EventDate < pivot)
                    { //how many integers are less than pivot
                        i++;//increase left marker
                    }
                    while (list[j].EventDate > pivot)
                    {//how many integers are greater than pivot
                        j--;//decrease right marker
                    }
                    if (i <= j)
                    {
                        Swap(list, i, j);
                        i++;
                        j--;
                    }
                }
                if (low < j)
                {
                    SortByDate(list, low, j);
                }
                if (i < high)
                {
                    SortByDate(list, i, high);
                }
            }
        }

        /// <summary>
        /// Help method to swap two elements of a list at two specific points
        /// </summary>
        /// <param name="list">List with elements to be swapped.</param>
        /// <param name="i">Index 1.</param>
        /// <param name="j">Index 2.</param>
        private static void Swap(List<Event> list, int i, int j)
        {
            Event temp = list[i];
            list[i] = list[j];
            list[j] = temp;
        }
    }
}
