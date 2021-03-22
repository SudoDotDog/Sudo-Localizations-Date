import 'package:localizations_date/src/relative/declare/declare.dart';

String localizationDateRelativeFormat(
  DateTime date,
  Map<String, String> map, {
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

  if (abstractDifference < config.justNowMaximumDuration.inMilliseconds) {
    builder.add(isBefore ? map['just-now'] : map['about-now']);
    return builder.join();
  }

  return builder.join();
}
