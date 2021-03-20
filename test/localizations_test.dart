import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock.dart';

void main() {
  testWidgets('mock date parse widget in english', (WidgetTester tester) async {
    final DateTime date = DateTime.now();

    await tester.pumpWidget(
      MockParseWidget(
        locale: Locale('en'),
        date: date,
      ),
    );

    final Finder textFinder = find.byType(Text);
    final Text textWidget = textFinder.evaluate().single.widget;

    expect(textWidget.data, "2021");
  });
}
