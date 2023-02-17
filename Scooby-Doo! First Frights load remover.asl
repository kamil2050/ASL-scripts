state("Scooby")
{
  byte load : 0x24F01C;
  int blackscreen: 0x24EFEC, 0x1C;
}

isLoading
{
return current.load != 0 || current.blackscreen != 0;
}
