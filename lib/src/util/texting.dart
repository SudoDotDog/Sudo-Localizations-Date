String getMonthTexting(
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
  }

  return "Invalid Month";
}
