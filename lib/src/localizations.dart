import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localizations_date/src/declare.dart';
import 'package:localizations_date/src/en.dart';
import 'package:localizations_date/src/zh.dart';

class GlobalDateLocalizations {
  final Locale locale;

  GlobalDateLocalizations(this.locale);

  static GlobalDateLocalizations of(BuildContext context) {
    return Localizations.of<GlobalDateLocalizations>(
      context,
      GlobalDateLocalizations,
    );
  }

  static Map<String, LocalizationDateFormatFunction> _localizedFormat = {
    'en': localizationDateEnglishFormat,
    'zh': localizationDateChineseFormat,
  };

  LocalizationDateFormatFunction get _formatMap {
    final LocalizationDateFormatFunction function =
        _localizedFormat[locale.languageCode];
    if (function == null) {
      return localizationDateEnglishFormat;
    }
    return function;
  }

  String formatDate(DateTime date) {
    final String value = this._formatMap(date);
    return value;
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
