import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localizations_date/src/local/declare/date.dart';
import 'package:localizations_date/src/local/declare/declare.dart';
import 'package:localizations_date/src/local/declare/time.dart';
import 'package:localizations_date/src/local/en.dart';
import 'package:localizations_date/src/local/zh.dart';
import 'package:localizations_date/src/relative/declare/declare.dart';
import 'package:localizations_date/src/relative/en.dart';
import 'package:localizations_date/src/relative/relative.dart';
import 'package:localizations_date/src/relative/zh.dart';

class GlobalDateLocalizations {
  final Locale locale;

  GlobalDateLocalizations(this.locale);

  static GlobalDateLocalizations of(BuildContext context) {
    final GlobalDateLocalizations? localizations =
        Localizations.of<GlobalDateLocalizations>(
      context,
      GlobalDateLocalizations,
    );

    if (localizations == null) {
      throw FlutterError('Context not found: $context');
    }
    return localizations;
  }

  static Map<String, LocalFormatFunction> _localizedLocalFormat = {
    'en': localizationDateEnglishLocalFormat,
    'zh': localizationDateChineseLocalFormat,
  };

  static Map<String, Map<String, String>> _localizedRelativeFormat = {
    'en': localizationDateEnglishRelativeMap,
    'zh': localizationDateChineseRelativeMap,
  };

  LocalFormatFunction get _localFormatFunctionMap {
    final LocalFormatFunction? function =
        _localizedLocalFormat[locale.languageCode];
    if (function == null) {
      return localizationDateEnglishLocalFormat;
    }
    return function;
  }

  Map<String, String> get _relativeFormatMap {
    final Map<String, String>? map =
        _localizedRelativeFormat[locale.languageCode];
    if (map == null) {
      return localizationDateEnglishRelativeMap;
    }
    return map;
  }

  String localFormatDate(
    DateTime date, {
    LocalFormatDateConfig? dateConfig,
    LocalFormatTimeConfig? timeConfig,
  }) {
    final String value = this._localFormatFunctionMap(
      date,
      dateConfig: dateConfig,
      timeConfig: timeConfig,
    );
    return value;
  }

  String relativeFormatDate(
    DateTime date, {
    DateTime? now,
    RelativeFormatConfig? config,
  }) {
    final String value = localizationDateRelativeFormat(
      date,
      this._relativeFormatMap,
      now: now,
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
