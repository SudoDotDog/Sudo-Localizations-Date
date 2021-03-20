import 'package:localizations_date/src/declare/date.dart';
import 'package:localizations_date/src/declare/declare.dart';
import 'package:localizations_date/src/declare/time.dart';

LocalizationDateFormatFunction localizationDateEnglishFormat = (
  DateTime date, {
  LocalizationDateFormatDateConfig dateConfig,
  LocalizationDateFormatTimeConfig timeConfig,
}) {
  return date.year.toString();
};
