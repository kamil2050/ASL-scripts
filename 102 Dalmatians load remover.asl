state("PCdogs")
{
  int load : 0x9BAE8;
  int blackscreen : 0x00046BD0, 0x508, 0xE4, 0xC, 0x444;
}

isLoading
{
return current.load != 0 || current.blackscreen != 0;
}
