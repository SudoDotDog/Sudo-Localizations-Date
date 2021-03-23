class LocalFormatDateMonthConfig {
  final String monthType;

  const LocalFormatDateMonthConfig(this.monthType);

  static const LocalFormatDateMonthConfig numeric =
      const LocalFormatDateMonthConfig('numeric');

  static const LocalFormatDateMonthConfig semiFullText =
      const LocalFormatDateMonthConfig('semi-full-text');

  static const LocalFormatDateMonthConfig fullText =
      const LocalFormatDateMonthConfig('full-text');

  static const LocalFormatDateMonthConfig none =
      const LocalFormatDateMonthConfig('none');

  bool includes() {
    return this.monthType != 'none';
  }
}
