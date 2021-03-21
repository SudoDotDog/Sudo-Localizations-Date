import 'package:localizations_date/src/declare/date.dart';
import 'package:localizations_date/src/declare/declare.dart';
import 'package:localizations_date/src/declare/time.dart';

LocalizationDateFormatFunction localizationDateEnglishFormat = (
  DateTime date, {
  LocalizationDateFormatDateConfig dateConfig,
  LocalizationDateFormatTimeConfig timeConfig,
}) {
  final List<String> builder = [];

  if (dateConfig.ensureIncludes()) {
    if (dateConfig.includesYear) {
      builder.add(date.year.toString());
      if (dateConfig.includesMonth) {
        builder.add("-");
      }
    }

    if (dateConfig.includesMonth) {
      builder.add(date.month.toString());
      if (dateConfig.includesDay) {
        builder.add("-");
      }
    }

    if (dateConfig.includesDay) {
      builder.add(date.day.toString());
    }
    builder.add(' ');
  }

  if (timeConfig.ensureIncludes()) {
    if (timeConfig.includesHour) {
      builder.add(date.hour.toString());
      if (timeConfig.includesMinute) {
        builder.add(":");
      }
    }

    if (timeConfig.includesMinute) {
      builder.add(date.minute.toString());
      if (timeConfig.includesSecond) {
        builder.add(":");
      }
    }

    if (timeConfig.includesSecond) {
      builder.add(date.second.toString());
    }
  }

  return builder.join();
};
