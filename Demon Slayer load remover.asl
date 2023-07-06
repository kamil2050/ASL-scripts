state("APK-Win64-Shipping")
{
  int load : 0x05C02470, 0x8, 0x448;
}

isLoading
{
return current.load != 0;
}
