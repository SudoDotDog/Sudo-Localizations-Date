import 'package:localizations_date/src/relative/declare/declare.dart';

String localizationDateRelativeFormat(
  DateTime date,
  Map<String, String> map, {
  DateTime now,
  RelativeFormatConfig config = const RelativeFormatConfig(),
}) {
  final List<String> builder = [];

  if (now == null) {
    now = DateTime.now();
  }

  final int verticalDifference =
      date.millisecondsSinceEpoch - now.millisecondsSinceEpoch;

  final int abstractDifference = verticalDifference.abs();
  bool isBefore = verticalDifference < 0;

  if (abstractDifference < config.justNowMaximumDuration.inMilliseconds) {
    builder.add(isBefore ? map['just-now'] : map['about-now']);
    return builder.join();
  }

  if (abstractDifference < Duration(minutes: 1).inMilliseconds) {
    builder.add(map['less-than-a-minute']);
    return builder.join();
  }

  if (abstractDifference < Duration(hours: 1).inMilliseconds) {
    builder.add(
      (abstractDifference / Duration(minutes: 1).inMilliseconds)
          .round()
          .toString(),
    );
    builder.add(' ');
    builder.add(isBefore ? map['minutes-ago'] : map['minutes-later']);
    return builder.join();
  }

  if (abstractDifference < Duration(days: 1).inMilliseconds) {
    builder.add(
      (abstractDifference / Duration(hours: 1).inMilliseconds)
          .round()
          .toString(),
    );
    builder.add(' ');
    builder.add(isBefore ? map['hours-ago'] : map['hours-later']);
    return builder.join();
  }

  if (abstractDifference < Duration(days: 30).inMilliseconds) {
    builder.add(
      (abstractDifference / Duration(days: 1).inMilliseconds)
          .round()
          .toString(),
    );
    builder.add(' ');
    builder.add(isBefore ? map['days-ago'] : map['days-later']);
    return builder.join();
  }

  if (abstractDifference < Duration(days: 365).inMilliseconds) {
    builder.add(
      (abstractDifference / Duration(hours: 30).inMilliseconds)
          .round()
          .toString(),
    );
    builder.add(' ');
    builder.add(isBefore ? map['months-ago'] : map['months-later']);
    return builder.join();
  }

  builder.add(
    (abstractDifference / Duration(hours: 365).inMilliseconds)
        .round()
        .toString(),
  );
  builder.add(' ');
  builder.add(isBefore ? map['years-ago'] : map['years-later']);
  return builder.join();
}
