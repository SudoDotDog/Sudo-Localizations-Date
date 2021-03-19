import 'package:flutter_test/flutter_test.dart';

import 'mock.dart';

void main() {
  testWidgets('mock widget has a title', (WidgetTester tester) async {
    await tester.pumpWidget(MockWidget());
  });
}
