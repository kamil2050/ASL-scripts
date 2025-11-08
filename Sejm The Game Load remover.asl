state("SejmTheGame")
{
  int logo : "UnityPlayer.dll", 0x01F3EFA8, 0x2F8;
  int blackscreen : "SejmTheGame", 0x00019ED8, 0x1D8, 0x50, 0x6B8, 0x4C0, 0xE0, 0x30, 0x4C;
}

isLoading
{
return current.logo != 0 || current.blackscreen != 0;
}