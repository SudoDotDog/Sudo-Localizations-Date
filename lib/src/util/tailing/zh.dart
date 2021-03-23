String addDayNumberChineseTailing(int day) {
  if (day > 31 || day < 1) {
    return "Invalid Date";
  }

  // ignore: unnecessary_brace_in_string_interps
  return "${day}日";
}
