String addDayNumberEnglishTailing(int day) {
  if (day > 31 || day < 1) {
    return "Invalid Date";
  }

  if (day == 1 || day == 21 || day == 31) {
    return "${day}st";
  }

  if (day == 2 || day == 22) {
    return "${day}nd";
  }

  if (day == 3 || day == 23) {
    return "${day}rd";
  }

  return "${day}th";
}
