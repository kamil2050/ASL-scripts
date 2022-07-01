state("Scooby")
{
  byte load : 0x24F01C;
}

isLoading
{
return current.load != 0;
}