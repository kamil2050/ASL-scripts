state("SejmTheGame")
{
  int load : "UnityPlayer.dll", 0x01F04930, 0x108, 0x7F4; 
}

isLoading
{
return current.load != 0;
}