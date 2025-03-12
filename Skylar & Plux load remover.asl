state("CloverIsland-Win64-Shipping")
{
 int load : 0x025D1938, 0x60;
}

isLoading
{
return current.load !=0;
}