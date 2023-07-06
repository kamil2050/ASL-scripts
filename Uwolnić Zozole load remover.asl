state("Zozole")
{
  byte load : 0x588E0;
}

isLoading
{
return current.load != 0;
}
