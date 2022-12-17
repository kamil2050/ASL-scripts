state("CLAW")
{
  byte load : 0x136B60;
}

isLoading
{
return current.load != 1;
}