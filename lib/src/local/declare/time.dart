class LocalFormatTimeConfig {
  final bool includesHour;
  final bool includesMinute;
  final bool includesSecond;
  final bool includesMillisecond;

  final bool uses12HourClock;

  const LocalFormatTimeConfig({
    required this.includesHour,
    required this.includesMinute,
    required this.includesSecond,
    required this.includesMillisecond,
    required this.uses12HourClock,
  });

  static const LocalFormatTimeConfig all = const LocalFormatTimeConfig(
    includesHour: true,
    includesMinute: true,
    includesSecond: true,
    includesMillisecond: true,
    uses12HourClock: false,
  );

  static const LocalFormatTimeConfig none = const LocalFormatTimeConfig(
    includesHour: false,
    includesMinute: false,
    includesSecond: false,
    includesMillisecond: false,
    uses12HourClock: false,
  );

  factory LocalFormatTimeConfig.only({
    bool hour = false,
    bool minute = false,
    bool second = false,
    bool millisecond = false,
    bool uses12HourClock = false,
  }) {
    return LocalFormatTimeConfig(
      includesHour: hour,
      includesMinute: minute,
      includesSecond: second,
      includesMillisecond: millisecond,
      uses12HourClock: uses12HourClock,
    );
  }

  bool get includesTime {
    return this.includesHour ||
        this.includesMinute ||
        this.includesSecond ||
        this.includesMillisecond;
  }
}
