class LocalizationDateFormatDateConfig {
  final bool includesDate;

  final bool includesYear;
  final bool includesMonth;
  final bool includesDay;

  const LocalizationDateFormatDateConfig({
    this.includesDate = true,
    this.includesYear = true,
    this.includesMonth = true,
    this.includesDay = true,
  });

  static const LocalizationDateFormatDateConfig all =
      const LocalizationDateFormatDateConfig(
    includesDate: true,
    includesYear: true,
    includesMonth: true,
    includesDay: true,
  );

  static const LocalizationDateFormatDateConfig none =
      const LocalizationDateFormatDateConfig(
    includesDate: false,
    includesYear: false,
    includesMonth: false,
    includesDay: false,
  );

  factory LocalizationDateFormatDateConfig.only({
    bool year,
    bool month,
    bool day,
  }) {
    if (!year && !month && !day) {
      return LocalizationDateFormatDateConfig.none;
    }

    return LocalizationDateFormatDateConfig(
      includesDate: true,
      includesYear: year,
      includesMonth: month,
      includesDay: day,
    );
  }
}
