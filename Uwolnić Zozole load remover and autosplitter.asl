state("Zozole")
{
    int load : 0x59078;
    byte inMenu : 0x59184; 
    byte levelNum : 0x5918A;
    byte finalCutscene : 0x594EC;
}

init
{
    vars.currentLevel = 0;
}

isLoading
{
    return current.load != 0;
}

start
{
    if (vars.currentLevel == 0 && current.inMenu == 108)
    {
        vars.currentLevel = 1;
        return true;
    }
    return false;
}

split
{
    if (vars.currentLevel == 1 && current.levelNum == 50)
    {
        vars.currentLevel = 2;
        return true;
    }

    else if (vars.currentLevel == 2 && current.levelNum == 51)
    {
        vars.currentLevel = 3;
        return true;
    }

    else if (vars.currentLevel == 3 && current.levelNum == 52)
    {
        vars.currentLevel = 4;
        return true;
    }

    else return  vars.currentLevel == 4 && current.finalCutscene == 1;
}

reset
{
    if (current.inMenu == 109)
    {
        vars.currentLevel = 0;
        return true;
    }
    return false;
}
