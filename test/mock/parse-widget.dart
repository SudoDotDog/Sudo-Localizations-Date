import 'package:flutter/material.dart';
import 'package:localizations_date/localizations_date.dart';
import 'package:localizations_date/src/local/declare/date.dart';
import 'package:localizations_date/src/local/declare/time.dart';

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
              dateLocalizations.localFormatDate(
                this.date,
                dateConfig: this.dateConfig,
                timeConfig: this.timeConfig,
              ),
            );
          },
        ),
      ),
    );
  }
}
