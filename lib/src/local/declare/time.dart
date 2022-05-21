class LocalFormatTimeConfig {
  final bool includesHour;
  final bool includesMinute;
  final bool includesSecond;
  final bool includesMillisecond;

  const LocalFormatTimeConfig({
    required this.includesHour,
    required this.includesMinute,
    required this.includesSecond,
    required this.includesMillisecond,
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
    bool hour = false,
    bool minute = false,
    bool second = false,
    bool millisecond = false,
  }) {
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
