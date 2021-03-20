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

    expect(textFinder.toString(), "Hello");
  });
}
