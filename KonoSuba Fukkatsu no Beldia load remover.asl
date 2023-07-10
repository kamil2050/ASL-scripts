state("konosuba") {
  bool loading: "USER32.dll", 0xA5E50;
}

isLoading {
  return current.loading;
}