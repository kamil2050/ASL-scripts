state("PCdogs")
{
  int load : 0x9BAE8;
}

isLoading
{
return current.load != 0;
}