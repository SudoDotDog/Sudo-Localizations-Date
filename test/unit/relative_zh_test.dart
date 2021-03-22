import 'package:flutter_test/flutter_test.dart';
import 'package:localizations_date/src/relative/relative.dart';
import 'package:localizations_date/src/relative/zh.dart';

void main() {
  test('relative format - about now', () {
    final DateTime currentDate = DateTime(1995, 5, 5, 5, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 6);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      localizationDateChineseRelativeMap['about-now'],
    );
  });

  test('relative format - just now', () {
    final DateTime currentDate = DateTime(1995, 5, 5, 5, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 4);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      localizationDateChineseRelativeMap['just-now'],
    );
  });

  test('relative format - less than a minute', () {
    final DateTime currentDate = DateTime(1995, 5, 5, 5, 5, 20);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      localizationDateChineseRelativeMap['less-than-a-minute'],
    );
  });

  test('relative format - minutes ago', () {
    final DateTime currentDate = DateTime(1995, 5, 5, 5, 10, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5${localizationDateChineseRelativeMap['minutes-ago']}",
    );
  });

  test('relative format - minutes later', () {
    final DateTime currentDate = DateTime(1995, 5, 5, 5, 0, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5${localizationDateChineseRelativeMap['minutes-later']}",
    );
  });

  test('relative format - hours ago', () {
    final DateTime currentDate = DateTime(1995, 5, 5, 10, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5${localizationDateChineseRelativeMap['hours-ago']}",
    );
  });

  test('relative format - hours later', () {
    final DateTime currentDate = DateTime(1995, 5, 5, 0, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5${localizationDateChineseRelativeMap['hours-later']}",
    );
  });

  test('relative format - days ago', () {
    final DateTime currentDate = DateTime(1995, 5, 10, 5, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5${localizationDateChineseRelativeMap['days-ago']}",
    );
  });

  test('relative format - days later', () {
    final DateTime currentDate = DateTime(1995, 5, 0, 5, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5${localizationDateChineseRelativeMap['days-later']}",
    );
  });

  test('relative format - months ago', () {
    final DateTime currentDate = DateTime(1995, 10, 5, 5, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5${localizationDateChineseRelativeMap['months-ago']}",
    );
  });

  test('relative format - months later', () {
    final DateTime currentDate = DateTime(1995, 0, 5, 5, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5${localizationDateChineseRelativeMap['months-later']}",
    );
  });

  test('relative format - years ago', () {
    final DateTime currentDate = DateTime(2000, 5, 5, 5, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5${localizationDateChineseRelativeMap['years-ago']}",
    );
  });

  test('relative format - years later', () {
    final DateTime currentDate = DateTime(1990, 5, 5, 5, 5, 5);
    final DateTime staticDate = DateTime(1995, 5, 5, 5, 5, 5);

    final String formatted = localizationDateRelativeFormat(
      staticDate,
      localizationDateChineseRelativeMap,
      now: currentDate,
    );

    expect(
      formatted,
      "5${localizationDateChineseRelativeMap['years-later']}",
    );
  });
}
