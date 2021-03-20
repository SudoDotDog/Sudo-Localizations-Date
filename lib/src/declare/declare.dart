import 'package:localizations_date/src/declare/date.dart';
import 'package:localizations_date/src/declare/time.dart';

typedef LocalizationDateFormatFunction = String Function(
  DateTime date, {
  LocalizationDateFormatDateConfig dateConfig,
  LocalizationDateFormatTimeConfig timeConfig,
});
