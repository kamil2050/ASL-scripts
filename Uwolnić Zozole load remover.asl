state("Zozole")
{
   int load : 0x59078;
}

isLoading
{
   return current.load !=0;
}
