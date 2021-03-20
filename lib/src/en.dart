import 'package:localizations_date/src/declare/date.dart';
import 'package:localizations_date/src/declare/declare.dart';
import 'package:localizations_date/src/declare/time.dart';

LocalizationDateFormatFunction localizationDateEnglishFormat = (
  DateTime date, {
  LocalizationDateFormatDateConfig dateConfig,
  LocalizationDateFormatTimeConfig timeConfig,
}) {
  final List<String> builder = [];

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
  return date.year.toString();
};
