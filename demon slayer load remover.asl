state("APK-Win64-Shipping")
{
  byte load : 0x5E297E8;
}

isLoading
{
if(current.load == 0){
return true;
} else
{
return false;
}
}