String getMonthChineseTexting(
  int month, {
  bool fullText,
}) {
  if (month > 12 || month < 1) {
    return "Invalid Month";
  }

  if (fullText == null) {
    fullText = false;
  }

  switch (month) {
    case 1:
      return fullText ? "January" : "Jan";
    case 2:
      return fullText ? "February" : "Feb";
    case 3:
      return fullText ? "March" : "Mar";
    case 4:
      return fullText ? "April" : "Apr";
    case 5:
      return fullText ? "May" : "May";
    case 6:
      return fullText ? "June" : "Jun";
    case 7:
      return fullText ? "July" : "Jul";
    case 8:
      return fullText ? "August" : "Aug";
    case 9:
      return fullText ? "September" : "Sep";
    case 10:
      return fullText ? "October" : "Oct";
    case 11:
      return fullText ? "November" : "Nov";
    case 12:
      return fullText ? "December" : "Dec";
  }

  return "Invalid Month";
}
