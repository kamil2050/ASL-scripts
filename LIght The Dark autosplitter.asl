state("Light The Dark")
{
  int levelID : 0x59D310;
  int gemtouch : 0x375AFC;
  //both are "Light The Dark.exe"
  //backup adress for levelID : 0x0006F824, 0x6C8
  //backup adress for gemtouch : 0x00015E50, 0xDC
}

//menu=1
//levelx=level+4
//level0=4
//level5=9
//level10=14
//level15=19
//level20=24
//level25=29
//level28=32
//gemtouch 0=not touched, 1=touched

start
{
  if(current.levelID == 4 && old.levelID !=4)
  {
    return true;
  }
}

split
{
  if(current.gemtouch == 0)
  {
    if(current.levelID > old.levelID)
    {
        return true;
    }
  }
else return current.gemtouch != old.gemtouch && current.gemtouch == 1; //thanks to rumii for help with this one
}

reset
{
  if(current.levelID == 1)
  {
    return true;
  }
}
