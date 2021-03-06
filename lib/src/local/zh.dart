import 'package:localizations_date/src/local/declare/date.dart';
import 'package:localizations_date/src/local/declare/date/day.dart';
import 'package:localizations_date/src/local/declare/date/month.dart';
import 'package:localizations_date/src/local/declare/declare.dart';
import 'package:localizations_date/src/local/declare/time.dart';

LocalFormatFunction localizationDateChineseLocalFormat = (
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

  if (dateConfig.includesDate) {
    if (dateConfig.includesYear) {
      builder.add(date.year.toString());
      if (dateConfig.includesMonth) {
        if (dateConfig.hasSeparator) {
          builder.add(dateConfig.separator.separator);
        }
      }
    }

    if (dateConfig.includesMonth) {
      final LocalFormatDateMonthConfig monthConfig = dateConfig.monthConfig;
      builder.add(monthConfig.getChineseMonthValue(date.month));
      if (dateConfig.includesDay) {
        if (dateConfig.hasSeparator) {
          builder.add(dateConfig.separator.separator);
        }
      }
    }

    if (dateConfig.includesDay) {
      final LocalFormatDateDayConfig dayConfig = dateConfig.dayConfig;
      builder.add(dayConfig.getChineseDayValue(date.day));
    }

    if (timeConfig.includesTime) {
      builder.add(' ');
    }
  }

  if (timeConfig.includesTime) {
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
