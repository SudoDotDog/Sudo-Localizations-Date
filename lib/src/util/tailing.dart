String addMonthNumberTailing(int month) {
  if (month > 31 || month < 1) {
    return "Invalid Month";
  }

  if (month == 1 || month == 21 || month == 31) {
    return "${month}st";
  }

  if (month == 2 || month == 22) {
    return "${month}nd";
  }

  if (month == 3 || month == 23) {
    return "${month}rd";
  }

  return "${month}th";
}
