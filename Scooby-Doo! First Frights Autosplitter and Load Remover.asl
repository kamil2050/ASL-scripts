state("Scooby")
{
  byte load : 0x24F01C;
  byte level : 0x2D9924;
  float bosshp : "Scooby.exe", 0x0024EFEC, 0x38, 0xA0, 0x4C;
  int blackscreen: 0x24EFEC, 0x1C;
}

startup
{
    settings.Add("anyperc", true, "Any%");
	
	vars.bossStage = 0;
	vars.bossPhaseSwitch = false;
}

isLoading
{
return current.load != 0 || current.blackscreen != 0;
}

start
{
	if(settings["anyperc"])
	{
		return current.level == 6;
	}
	return false;
}

split
{
  if (current.level == 10)//
            {
                return old.level != current.level;
            }
            else if (current.level == 16)//
            {
                return old.level != current.level;
            }
            else if (current.level == 22)//
            {
                return old.level != current.level;
            }
            else if (current.level == 7 || current.level == 8 || current.level == 9 || current.level == 11 || current.level == 12 || current.level == 13 || current.level == 14 || current.level == 15 || current.level == 17 || current.level == 18 || current.level == 19 || current.level == 20 || current.level == 21 || current.level == 23 || current.level == 24 || current.level == 25 || current.level == 26)
            {
                return old.level != current.level;
            }
            else if (current.level == 27 && old.level != 27)
            {
                return old.level != current.level;
            }
            else if (current.level == 27 && old.level == 27 && vars.bossStage == 0)
            {
                if (current.bosshp != 0)
                {
                    vars.bossStage = 1;
                }
            }
            else if (current.bosshp == 0 && vars.bossStage == 1 && current.level == 27 && vars.bossPhaseSwitch == false)
            {
                vars.bossPhaseSwitch = true;
            }
            else if (vars.bossPhaseSwitch == true)
            {
                if (current.bosshp != 0)
                {
                    vars.bossStage = 2;
                    vars.bossPhaseSwitch = false;
                }
            }
            else if (current.bosshp == 0 && vars.bossStage == 2 && current.level == 27)
            {
                return true;
            }

            return false;
}