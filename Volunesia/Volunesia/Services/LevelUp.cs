﻿using System;
using System.Collections.Generic;
using System.Text;
using Volunesia.Models;

namespace Volunesia.Services
{
    public class LevelUp
    {
        public LevelExperience LvlExpMapping;

        public LevelUp()
        {
            LvlExpMapping.levelExperienceMapping = new Dictionary<int, int>()
            {
                {1,0},
                {2,83},
                {3,174},
                {4,276},
                {5,388},
                {6, 512},
                {7,650},
                {8,801},
                {9,969},
                {10,1154},
                {11,1358},
                {12,1584},
                {13,1833},
                {14,2107},
                {15,2411},
                {16,2746},
                {17,3115},
                {18,3523},
                {19,3973},
                {20,4470},
                {21,5018},
                {22,5624},
                {23,6291},
                {24,7028},
                {25,7842},
                {26, 8740},
                {27,9730},
                {28,10824},
                {29,12031 },
                {30,13363},
                {31,14833},
                {32,16456},
                {33,18247 },
                {34,20224},
                {35,22406},
                {36,24815},
                {37,27473},
                {38,30408},
                {39,33648},
                {40,37224},
                {41,41171},
                {42,45259},
                {43,50339},
                {44,55649},
                {45,61512},
                {46,67983},
                {47,75127},
                {48,83014},
                {49,91721},
                {50,101333},
                {51,111945},
                {52,123660},
                {53,136594},
                {54,150872 },
                {55,166636 },
                {56,184040 },
                {57,203254},
                {58,224466},
                {59,247886},
                {60,273742},
                {61,302288},
                {62,333804},
                {63,368599},
                {64,407015},
                {65,449428},
                {66,496254},
                {67,547953},
                {68,605032},
                {69,668051},
                {70,737627},
                {71,814445},
                {72,899257},
                {73,992895},
                {74,1096278},
                {75,1210421},
                {76,1336443},
                {77,1475581},
                {78,1629200},
                {79,1798808},
                {80,1986068},
                {81,2192818},
                {82,2421087},
                {83,2673114},
                {84,2951373},
                {85,3258594},
                {86,3597792},
                {87,3972294},
                {88,4385776},
                {89,4842295},
                {90,5346332},
                {91,5902831},
                {92,6517253},
                {93,7195629},
                {94,7944614},
                {95,8771558},
                {96,9684577},
                {97,10692629},
                {98,11805606},
                {99,13034431}


            };
        }
        
        //Checks if the user can proceed to the next level while assigning badges if necessary
        public void CheckIfUserCanLevelUp(Volunteer theVolunteer)
        {
            //If the volunteer is already capped at 99, then there is no need to level up
            if(theVolunteer.Level == 99)
            {

            }
            else
            {
                Conversion conv = new Conversion();
                int volunteerXP = conv.ConvertVolunteerHoursToExperiencePoints(theVolunteer.Minutes);

                int levelPlacement = 1;
                foreach(KeyValuePair<int, int> entry in LvlExpMapping.levelExperienceMapping)
                {
                    //If the amount of points a volunteer has is greater than the current experience mapping
                    //then increment the volunteer's level
                    if (volunteerXP > entry.Value)
                    {
                        levelPlacement++;
                    }
                    //however, if the amount of points a volunteer has is less than the current experience mapping
                    //then assign that 
                    else if(volunteerXP < entry.Value)
                    {
                        theVolunteer.Level = levelPlacement;
                        break;
                    }
                }
                //if volunteer levvel is higher than 1, and Novice hasn't been earned then...
                if (theVolunteer.Level >= 1 && !theVolunteer.BadgeList.Contains(BadgeCategory.Badge.Novice))
                {
                    theVolunteer.BadgeList.Add(BadgeCategory.Badge.Novice);
                }
                //checks if volunteer level is higher than 25 and if Intermediate badge hasn't been earned yet
                else if (theVolunteer.Level >= 25 && !theVolunteer.BadgeList.Contains(BadgeCategory.Badge.Intermediate))
                {
                    theVolunteer.BadgeList.Add(BadgeCategory.Badge.Intermediate);
                }
                //checks if volunteer level is higher than 50 and if Advanced badage hasn't been earned yet
                else if (theVolunteer.Level >= 50 && !theVolunteer.BadgeList.Contains(BadgeCategory.Badge.Advanced))
                {
                    theVolunteer.BadgeList.Add(BadgeCategory.Badge.Advanced);
                }
                //checks if volunteer level is higher than 75 and if Expert badge hasn't been earned yet
                else if (theVolunteer.Level >= 75 && !theVolunteer.BadgeList.Contains(BadgeCategory.Badge.Expert))
                {
                    theVolunteer.BadgeList.Add(BadgeCategory.Badge.Expert);
                }
                //checks if volunteer level is at 99 and if GrandMaster badge hasn't been earned yet
                else if (theVolunteer.Level == 99 && !theVolunteer.BadgeList.Contains(BadgeCategory.Badge.Grandmaster))
                {
                    theVolunteer.BadgeList.Add(BadgeCategory.Badge.Grandmaster);
                }
            }


        }
    }
}