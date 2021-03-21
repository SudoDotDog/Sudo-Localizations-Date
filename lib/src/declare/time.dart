class LocalFormatTimeConfig {
  final bool includesTime;

  final bool includesHour;
  final bool includesMinute;
  final bool includesSecond;
  final bool includesMillisecond;

  const LocalFormatTimeConfig({
    this.includesTime = true,
    this.includesHour = true,
    this.includesMinute = true,
    this.includesSecond = true,
    this.includesMillisecond = true,
  });

  static const LocalFormatTimeConfig all = const LocalFormatTimeConfig(
    includesTime: true,
    includesHour: true,
    includesMinute: true,
    includesSecond: true,
    includesMillisecond: true,
  );

  static const LocalFormatTimeConfig none = const LocalFormatTimeConfig(
    includesTime: false,
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
      includesTime: true,
      includesHour: hour,
      includesMinute: minute,
      includesSecond: second,
      includesMillisecond: millisecond,
    );
  }

  bool ensureIncludes() {
    if (!this.includesTime) {
      return false;
    }
    return this.includesHour ||
        this.includesMinute ||
        this.includesSecond ||
        this.includesMillisecond;
  }
}
