import 'package:flutter/material.dart';
import 'package:localizations_date/localizations_date.dart';

class MockWidget extends StatelessWidget {
  final Locale locale;

  MockWidget({
    @required this.locale,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalDateLocalizations.delegate,
      ],
      locale: this.locale,
      home: Scaffold(
        body: Center(
          child: Text("Test"),
        ),
      ),
    );
  }
}
