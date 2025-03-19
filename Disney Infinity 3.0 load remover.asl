state("DisneyInfinity3")
{
  int load1 : 0x1E23530;
  int load2 : 0x1E89E74;
  int bload : 0x1E8E978;
}

isLoading
{
return current.load1 != 0 || current.load2 != 0 || current.bload != 0;
}