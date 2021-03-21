import 'package:localizations_date/src/declare/date.dart';
import 'package:localizations_date/src/declare/time.dart';

typedef LocalFormatFunction = String Function(
  DateTime date, {
  LocalFormatDateConfig dateConfig,
  LocalFormatTimeConfig timeConfig,
});
