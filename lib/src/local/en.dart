import 'package:localizations_date/src/local/declare/date.dart';
import 'package:localizations_date/src/local/declare/date/month.dart';
import 'package:localizations_date/src/local/declare/declare.dart';
import 'package:localizations_date/src/local/declare/time.dart';

LocalFormatFunction localizationDateEnglishLocalFormat = (
  DateTime date, {
  LocalFormatDateConfig dateConfig,
  LocalFormatTimeConfig timeConfig,
}) {
  if (dateConfig == null) {
    dateConfig = LocalFormatDateConfig.none;
  }

  if (timeConfig == null) {
    timeConfig = LocalFormatTimeConfig.none;
  }

  final List<String> builder = [];

  if (dateConfig.ensureIncludes()) {
    if (dateConfig.includesYear) {
      builder.add(date.year.toString());
      if (dateConfig.includesMonth) {
        builder.add("-");
      }
    }

    if (dateConfig.includesMonth) {
      final LocalFormatDateMonthConfig monthConfig = dateConfig.monthConfig;
      builder.add(monthConfig.getEnglishMonthValue(date.month));
      if (dateConfig.includesDay) {
        builder.add("-");
      }
    }

    if (dateConfig.includesDay) {
      builder.add(date.day.toString());
    }

    if (timeConfig.ensureIncludes()) {
      builder.add(' ');
    }
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
