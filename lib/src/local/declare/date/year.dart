class LocalFormatDateYearConfig {
  final String dateType;

  const LocalFormatDateYearConfig(this.dateType);

  static const LocalFormatDateYearConfig numeric =
      const LocalFormatDateYearConfig('numeric');

  static const LocalFormatDateYearConfig none =
      const LocalFormatDateYearConfig('none');

  bool includes() {
    return this.dateType != 'none';
  }

  String getEnglishYearValue(int year) {
    switch (this.dateType) {
      case 'numeric':
        return this._joinNumericYear(year);
    }

    return "Invalid Type";
  }

  String getChineseYearValue(int year) {
    switch (this.dateType) {
      case 'numeric':
        return this._joinNumericYear(year);
    }

    return "Invalid Type";
  }

  String _joinNumericYear(int year) {
    final String yearString = year.toString();
    return yearString;
  }
}
