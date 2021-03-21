import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:localizations_date/src/declare/date.dart';
import 'package:localizations_date/src/declare/time.dart';
import 'package:localizations_date/src/local/en.dart';

void main() {
  test('english local format', () {
    final DateTime date = DateTime.now();

    final String formatted = localizationDateEnglishLocalFormat(
      date,
      dateConfig: LocalFormatDateConfig.all,
      timeConfig: LocalFormatTimeConfig.all,
    );

    expect(formatted, "test");
  });
}
