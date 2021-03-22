import 'package:localizations_date/src/relative/declare/declare.dart';

String localizationDateRelativeFormat(
  DateTime date,
  Map<String, String> map, {
  DateTime now,
  RelativeFormatConfig config,
}) {
  if (config == null) {
    config = RelativeFormatConfig();
  }

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
    final int durValue = Duration(minutes: 1).inMilliseconds;
    final int diffValue = (abstractDifference / durValue).round();

    builder.add(diffValue.toString());
    builder.add(map['space']);

    if (diffValue == 1) {
      builder.add(isBefore ? map['minute-ago'] : map['minute-later']);
    } else {
      builder.add(isBefore ? map['minutes-ago'] : map['minutes-later']);
    }

    return builder.join();
  }

  if (abstractDifference < Duration(days: 1).inMilliseconds) {
    final int durValue = Duration(hours: 1).inMilliseconds;
    final int diffValue = (abstractDifference / durValue).round();

    builder.add(diffValue.toString());
    builder.add(map['space']);

    if (diffValue == 1) {
      builder.add(isBefore ? map['hour-ago'] : map['hour-later']);
    } else {
      builder.add(isBefore ? map['hours-ago'] : map['hours-later']);
    }

    return builder.join();
  }

  if (abstractDifference < Duration(days: 30).inMilliseconds) {
    final int durValue = Duration(days: 1).inMilliseconds;
    final int diffValue = (abstractDifference / durValue).round();

    if (diffValue == 1) {
      builder.add(isBefore ? map['yesterday'] : map['tomorrow']);
    } else {
      builder.add(diffValue.toString());
      builder.add(map['space']);
      builder.add(isBefore ? map['days-ago'] : map['days-later']);
    }

    return builder.join();
  }

  if (abstractDifference < Duration(days: 365).inMilliseconds) {
    final int durValue = Duration(days: 30).inMilliseconds;
    final int diffValue = (abstractDifference / durValue).round();

    if (diffValue == 1) {
      builder.add(isBefore ? map['last-month'] : map['next-month']);
    } else {
      builder.add(diffValue.toString());
      builder.add(map['space']);
      builder.add(isBefore ? map['months-ago'] : map['months-later']);
    }

    return builder.join();
  }

  final int durValue = Duration(days: 365).inMilliseconds;
  final int diffValue = (abstractDifference / durValue).round();

  if (diffValue == 1) {
    builder.add(isBefore ? map['last-year'] : map['next-year']);
  } else {
    builder.add(diffValue.toString());
    builder.add(map['space']);
    builder.add(isBefore ? map['years-ago'] : map['years-later']);
  }

  return builder.join();
}
