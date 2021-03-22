import 'package:flutter_test/flutter_test.dart';
import 'package:localizations_date/src/relative/en.dart';
import 'package:localizations_date/src/relative/relative.dart';

void main() {
  test('relative format - about now', () {
    final DateTime currentDate = DateTime(1995, 5, 5, 5, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 6);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateEnglishRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      localizationDateEnglishRelativeMap['about-now'],
    );
  });

  test('relative format - just now', () {
    final DateTime currentDate = DateTime(1995, 5, 5, 5, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 4);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateEnglishRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      localizationDateEnglishRelativeMap['about-now'],
    );
  });

  test('relative format - minutes ago', () {
    final DateTime currentDate = DateTime(1995, 5, 5, 5, 10, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateEnglishRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5 ${localizationDateEnglishRelativeMap['minutes-ago']}",
    );
  });
}
