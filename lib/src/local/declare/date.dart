class LocalFormatDateConfig {
  final bool includesDate;

  final bool includesYear;
  final bool includesMonth;
  final bool includesDay;

  const LocalFormatDateConfig({
    this.includesDate = true,
    this.includesYear = true,
    this.includesMonth = true,
    this.includesDay = true,
  });

  static const LocalFormatDateConfig all = const LocalFormatDateConfig(
    includesDate: true,
    includesYear: true,
    includesMonth: true,
    includesDay: true,
  );

  static const LocalFormatDateConfig none = const LocalFormatDateConfig(
    includesDate: false,
    includesYear: false,
    includesMonth: false,
    includesDay: false,
  );

  factory LocalFormatDateConfig.only({
    bool year,
    bool month,
    bool day,
  }) {
    if (!year && !month && !day) {
      return LocalFormatDateConfig.none;
    }

    return LocalFormatDateConfig(
      includesDate: true,
      includesYear: year,
      includesMonth: month,
      includesDay: day,
    );
  }

  bool ensureIncludes() {
    if (!this.includesDate) {
      return false;
    }
    return this.includesYear || this.includesMonth || this.includesDay;
  }
}
