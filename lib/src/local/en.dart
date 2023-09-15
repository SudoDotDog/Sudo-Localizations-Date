import 'package:localizations_date/src/local/declare/date.dart';
import 'package:localizations_date/src/local/declare/date/day.dart';
import 'package:localizations_date/src/local/declare/date/month.dart';
import 'package:localizations_date/src/local/declare/declare.dart';
import 'package:localizations_date/src/local/declare/time.dart';

LocalFormatFunction localizationDateEnglishLocalFormat = (
  DateTime date, {
  LocalFormatDateConfig? dateConfig,
  LocalFormatTimeConfig? timeConfig,
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
          if (dateConfig.separator.separator != null) {
            builder.add(dateConfig.separator.separator!);
          }
        }
      }
    }

    if (dateConfig.includesMonth) {
      final LocalFormatDateMonthConfig monthConfig = dateConfig.monthConfig;
      builder.add(monthConfig.getEnglishMonthValue(date.month));
      if (dateConfig.includesDay) {
        if (dateConfig.hasSeparator) {
          if (dateConfig.separator.separator != null) {
            builder.add(dateConfig.separator.separator!);
          }
        }
      }
    }

    if (dateConfig.includesDay) {
      final LocalFormatDateDayConfig dayConfig = dateConfig.dayConfig;
      builder.add(dayConfig.getEnglishDayValue(date.day));
    }

    if (timeConfig.includesTime) {
      builder.add(' ');
    }
  }

  if (timeConfig.includesTime) {
    if (timeConfig.includesHour) {
      if (timeConfig.uses12HourClock) {
        if (date.hour > 12) {
          builder.add(
            (date.hour - 12).toString().padLeft(2, '0'),
          );
        } else {
          builder.add(
            date.hour.toString().padLeft(2, '0'),
          );
        }
      } else {
        builder.add(
          date.hour.toString().padLeft(2, '0'),
        );
      }

      if (timeConfig.includesMinute) {
        builder.add(":");
      }
    }

    if (timeConfig.includesMinute) {
      builder.add(
        date.minute.toString().padLeft(2, '0'),
      );
      if (timeConfig.includesSecond) {
        builder.add(":");
      }
    }

    if (timeConfig.includesSecond) {
      builder.add(
        date.second.toString().padLeft(2, '0'),
      );
      if (timeConfig.includesMillisecond) {
        builder.add(".");
      }
    }

    if (timeConfig.includesMillisecond) {
      builder.add(
        date.millisecond.toString().padLeft(3, '0'),
      );
    }

    if (timeConfig.uses12HourClock) {
      if (date.hour > 12) {
        builder.add(' PM');
      } else {
        builder.add(' AM');
      }
    }
  }

  return builder.join();
};
