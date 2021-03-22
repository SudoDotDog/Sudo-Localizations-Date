import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localizations_date/src/local/declare/date.dart';
import 'package:localizations_date/src/local/declare/declare.dart';
import 'package:localizations_date/src/local/declare/time.dart';
import 'package:localizations_date/src/local/en.dart';
import 'package:localizations_date/src/local/zh.dart';
import 'package:localizations_date/src/relative/declare/declare.dart';
import 'package:localizations_date/src/relative/en.dart';

class GlobalDateLocalizations {
  final Locale locale;

  GlobalDateLocalizations(this.locale);

  static GlobalDateLocalizations of(BuildContext context) {
    return Localizations.of<GlobalDateLocalizations>(
      context,
      GlobalDateLocalizations,
    );
  }

  static Map<String, LocalFormatFunction> _localizedLocalFormat = {
    'en': localizationDateEnglishLocalFormat,
    'zh': localizationDateChineseLocalFormat,
  };

  static Map<String, RelativeFormatFunction> _localizedRelativeFormat = {
    'en': localizationDateEnglishRelativeFormat,
    'zh': localizationDateEnglishRelativeFormat,
  };

  LocalFormatFunction get _localFormatMap {
    final LocalFormatFunction function =
        _localizedLocalFormat[locale.languageCode];
    if (function == null) {
      return localizationDateEnglishLocalFormat;
    }
    return function;
  }

  RelativeFormatFunction get _relativeFormatMap {
    final RelativeFormatFunction function =
        _localizedRelativeFormat[locale.languageCode];
    if (function == null) {
      return localizationDateEnglishRelativeFormat;
    }
    return function;
  }

  String localFormatDate(
    DateTime date, {
    LocalFormatDateConfig dateConfig,
    LocalFormatTimeConfig timeConfig,
  }) {
    final String value = this._localFormatMap(
      date,
      dateConfig: dateConfig,
      timeConfig: timeConfig,
    );
    return value;
  }

  String relativeFormatDate(
    DateTime date, {
    RelativeFormatConfig config,
  }) {
    final String value = this._relativeFormatMap(
      date,
      config: config,
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
