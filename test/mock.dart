import 'package:flutter/material.dart';
import 'package:localizations_date/localizations_date.dart';

class MockParseWidget extends StatelessWidget {
  final Locale locale;

  final DateTime date;

  MockParseWidget({
    @required this.locale,
    @required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalDateLocalizations.delegate,
      ],
      locale: this.locale,
      home: Scaffold(
        body: Builder(
          builder: (BuildContext context) {
            final dateLocalizations = GlobalDateLocalizations.of(context);

            return Text(
              dateLocalizations.formatDate(
                this.date,
              ),
            );
          },
        ),
      ),
    );
  }
}
