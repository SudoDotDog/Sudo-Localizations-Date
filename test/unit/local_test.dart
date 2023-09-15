import 'package:flutter_test/flutter_test.dart';
import 'package:localizations_date/src/local/declare/date.dart';
import 'package:localizations_date/src/local/declare/time.dart';
import 'package:localizations_date/src/local/en.dart';

void main() {
  test('english local format - all', () {
    final DateTime date = DateTime(2015, 2, 2, 5, 5, 5);

    final String formatted = localizationDateEnglishLocalFormat(
      date,
      dateConfig: LocalFormatDateConfig.all,
      timeConfig: LocalFormatTimeConfig.all,
    );

    expect(formatted, "2015-February-2nd 05:05:05");
  });

  test('english local format - date only', () {
    final DateTime date = DateTime(2015, 2, 2, 5, 5, 5);

    final String formatted = localizationDateEnglishLocalFormat(
      date,
      dateConfig: LocalFormatDateConfig.all,
    );

    expect(formatted, "2015-February-2nd");
  });
}
