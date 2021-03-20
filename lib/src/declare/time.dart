class LocalizationDateFormatTimeConfig {
  final bool includesTime;

  final bool includesHour;
  final bool includesMinute;
  final bool includesSecond;
  final bool includesMillisecond;

  const LocalizationDateFormatTimeConfig({
    this.includesTime = true,
    this.includesHour = true,
    this.includesMinute = true,
    this.includesSecond = true,
    this.includesMillisecond = true,
  });

  static const LocalizationDateFormatTimeConfig all =
      const LocalizationDateFormatTimeConfig(
    includesTime: true,
    includesHour: true,
    includesMinute: true,
    includesSecond: true,
    includesMillisecond: true,
  );

  static const LocalizationDateFormatTimeConfig none =
      const LocalizationDateFormatTimeConfig(
    includesTime: false,
    includesHour: false,
    includesMinute: false,
    includesSecond: false,
    includesMillisecond: false,
  );

  factory LocalizationDateFormatTimeConfig.only({
    bool hour,
    bool minute,
    bool second,
    bool millisecond,
  }) {
    if (!hour && !minute && !second && !millisecond) {
      return LocalizationDateFormatTimeConfig.none;
    }

    return LocalizationDateFormatTimeConfig(
      includesTime: true,
      includesHour: hour,
      includesMinute: minute,
      includesSecond: second,
      includesMillisecond: millisecond,
    );
  }
}
