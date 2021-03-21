import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localizations_date/src/declare/date.dart';
import 'package:localizations_date/src/declare/declare.dart';
import 'package:localizations_date/src/declare/time.dart';
import 'package:localizations_date/src/local/en.dart';
import 'package:localizations_date/src/local/zh.dart';

class GlobalDateLocalizations {
  final Locale locale;

  GlobalDateLocalizations(this.locale);

  static GlobalDateLocalizations of(BuildContext context) {
    return Localizations.of<GlobalDateLocalizations>(
      context,
      GlobalDateLocalizations,
    );
  }

  static Map<String, LocalFormatFunction> _localizedFormat = {
    'en': localizationDateEnglishLocalFormat,
    'zh': localizationDateChineseLocalFormat,
  };

  LocalFormatFunction get _formatMap {
    final LocalFormatFunction function = _localizedFormat[locale.languageCode];
    if (function == null) {
      return localizationDateEnglishLocalFormat;
    }
    return function;
  }

  String localFormatDate(
    DateTime date, {
    LocalFormatDateConfig dateConfig,
    LocalFormatTimeConfig timeConfig,
  }) {
    final String value = this._formatMap(
      date,
      dateConfig: dateConfig,
      timeConfig: timeConfig,
    );
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
