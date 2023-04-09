state("Zozole")
{
  byte load : 0x588E0;
}

isLoading
{
if(current.load > 0){
return true;
} else
{
return false;
}
}