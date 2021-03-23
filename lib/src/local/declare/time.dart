class LocalFormatTimeConfig {
  final bool includesHour;
  final bool includesMinute;
  final bool includesSecond;
  final bool includesMillisecond;

  const LocalFormatTimeConfig({
    this.includesHour = true,
    this.includesMinute = true,
    this.includesSecond = true,
    this.includesMillisecond = true,
  });

  static const LocalFormatTimeConfig all = const LocalFormatTimeConfig(
    includesHour: true,
    includesMinute: true,
    includesSecond: true,
    includesMillisecond: true,
  );

  static const LocalFormatTimeConfig none = const LocalFormatTimeConfig(
    includesHour: false,
    includesMinute: false,
    includesSecond: false,
    includesMillisecond: false,
  );

  factory LocalFormatTimeConfig.only({
    bool hour,
    bool minute,
    bool second,
    bool millisecond,
  }) {
    if (!hour && !minute && !second && !millisecond) {
      return LocalFormatTimeConfig.none;
    }

    return LocalFormatTimeConfig(
      includesHour: hour,
      includesMinute: minute,
      includesSecond: second,
      includesMillisecond: millisecond,
    );
  }

  bool get includesTime {
    return this.includesHour ||
        this.includesMinute ||
        this.includesSecond ||
        this.includesMillisecond;
  }
}
