import 'package:localizations_date/src/local/declare/date.dart';
import 'package:localizations_date/src/local/declare/time.dart';

typedef LocalFormatFunction = String Function(
  DateTime date, {
  LocalFormatDateConfig dateConfig,
  LocalFormatTimeConfig timeConfig,
});
