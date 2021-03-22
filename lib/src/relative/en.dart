import 'package:localizations_date/src/relative/declare/declare.dart';

RelativeFormatFunction localizationDateEnglishRelativeFormat = (
  DateTime date, {
  DateTime now,
  RelativeFormatConfig config,
}) {
  final List<String> builder = [];

  if (now == null) {
    now = DateTime.now();
  }

  final int verticalDifference =
      date.millisecondsSinceEpoch - now.millisecondsSinceEpoch;

  final int abstractDifference = verticalDifference.abs();
  bool isBefore = verticalDifference > 0;

  return builder.join();
};
