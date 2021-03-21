import 'package:flutter_test/flutter_test.dart';
import 'package:localizations_date/src/local/declare/date.dart';
import 'package:localizations_date/src/local/declare/time.dart';
import 'package:localizations_date/src/local/en.dart';

void main() {
  test('english local format - all', () {
    final DateTime date = DateTime.now();

    final String formatted = localizationDateEnglishLocalFormat(
      date,
      dateConfig: LocalFormatDateConfig.all,
      timeConfig: LocalFormatTimeConfig.all,
    );

    expect(
      formatted,
      "${date.year}-${date.month}-${date.day} ${date.hour}:${date.minute}:${date.second}",
    );
  });

  test('english local format - date only', () {
    final DateTime date = DateTime.now();

    final String formatted = localizationDateEnglishLocalFormat(
      date,
      dateConfig: LocalFormatDateConfig.all,
    );

    expect(
      formatted,
      "${date.year}-${date.month}-${date.day}",
    );
  });
}
