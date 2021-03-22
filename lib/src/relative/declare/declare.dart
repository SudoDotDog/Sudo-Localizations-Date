class RelativeFormatConfig {
  final Duration justNowMaximumDuration;

  const RelativeFormatConfig({
    this.justNowMaximumDuration = const Duration(
      seconds: 5,
    ),
  });
}
