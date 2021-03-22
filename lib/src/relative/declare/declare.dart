class RelativeFormatConfig {
  final Duration justNowMaximumDuration;

  const RelativeFormatConfig({
    this.justNowMaximumDuration = const Duration(
      minutes: 5,
    ),
  });
}
