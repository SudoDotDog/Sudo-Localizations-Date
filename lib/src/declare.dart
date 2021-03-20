class LocalizationDateFormatDateConfig {
  final bool includesDate;

  final bool includesYear;
  final bool includesMonth;
  final bool includesDay;

  const LocalizationDateFormatDateConfig({
    this.includesDate,
    this.includesYear,
    this.includesMonth,
    this.includesDay,
  });

  static const LocalizationDateFormatDateConfig all =
      const LocalizationDateFormatDateConfig(
    includesDate: true,
    includesYear: true,
    includesMonth: true,
    includesDay: true,
  );
}

typedef LocalizationDateFormatFunction = String Function(
  DateTime date, {
  LocalizationDateFormatDateConfig dateConfig,
});
