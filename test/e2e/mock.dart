import 'package:flutter/material.dart';
import 'package:localizations_date/localizations_date.dart';
import 'package:localizations_date/src/declare/date.dart';
import 'package:localizations_date/src/declare/time.dart';

class MockParseWidget extends StatelessWidget {
  final Locale locale;

  final DateTime date;
  final LocalFormatDateConfig dateConfig;
  final LocalFormatTimeConfig timeConfig;

  MockParseWidget({
    @required this.locale,
    @required this.date,
    this.dateConfig,
    this.timeConfig,
  });

  @override
  Widget build(BuildContext context) {
    final dateLocalizations = GlobalDateLocalizations.of(context);
    print(dateLocalizations.localFormatDate(
      this.date,
      dateConfig: this.dateConfig,
      timeConfig: this.timeConfig,
    ));

    return MaterialApp(
      localizationsDelegates: [
        GlobalDateLocalizations.delegate,
      ],
      locale: this.locale,
      home: Scaffold(
        body: Text("Test"),
      ),
    );
  }
}
