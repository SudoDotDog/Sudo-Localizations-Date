import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GlobalDateLocalizations {
  final Locale locale;

  GlobalDateLocalizations(this.locale);

  static GlobalDateLocalizations of(BuildContext context) {
    return Localizations.of<GlobalDateLocalizations>(
      context,
      GlobalDateLocalizations,
    );
  }

  static _GlobalDateLocalizationsDelegate delegate =
      _GlobalDateLocalizationsDelegate();
}

class _GlobalDateLocalizationsDelegate
    extends LocalizationsDelegate<GlobalDateLocalizations> {
  const _GlobalDateLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => [
        'en',
        'zh',
      ].contains(locale.languageCode);

  @override
  Future<GlobalDateLocalizations> load(Locale locale) {
    return SynchronousFuture<GlobalDateLocalizations>(
      GlobalDateLocalizations(locale),
    );
  }

  @override
  bool shouldReload(_GlobalDateLocalizationsDelegate before) => false;
}
