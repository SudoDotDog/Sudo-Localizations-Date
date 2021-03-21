class RelativeFormatConfig {
  const RelativeFormatConfig();
}

typedef RelativeFormatFunction = String Function(
  DateTime date, {
  RelativeFormatConfig config,
});
