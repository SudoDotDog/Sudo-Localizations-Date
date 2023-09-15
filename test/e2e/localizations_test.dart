import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:localizations_date/src/local/declare/date.dart';

import '../mock/parse-widget.dart';

void main() {
  testWidgets('mock date parse widget in english', (WidgetTester tester) async {
    final DateTime date = DateTime.now();

    await tester.pumpWidget(
      MockParseWidget(
        locale: Locale('en'),
        date: date,
        dateConfig: LocalFormatDateConfig.allNumeric,
      ),
    );

    final Finder textFinder = find.byType(Text);
    final Text textWidget = textFinder.evaluate().single.widget as Text;

    expect(
      textWidget.data,
      "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    );
  });
}
