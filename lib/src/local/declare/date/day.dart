import 'package:localizations_date/src/util/tailing/en.dart';
import 'package:localizations_date/src/util/tailing/zh.dart';

class LocalFormatDateDayConfig {
  final String dateType;

  const LocalFormatDateDayConfig(this.dateType);

  static const LocalFormatDateDayConfig numeric =
      const LocalFormatDateDayConfig('numeric');

  static const LocalFormatDateDayConfig tailing =
      const LocalFormatDateDayConfig('tailing');

  static const LocalFormatDateDayConfig none =
      const LocalFormatDateDayConfig('none');

  bool includes() {
    return this.dateType != 'none';
  }

  String getEnglishDayValue(int day) {
    switch (this.dateType) {
      case 'numeric':
        return this._joinNumericDay(day);
      case 'tailing':
        return addDayNumberEnglishTailing(day);
    }

    return "Invalid Type";
  }

  String getChineseDayValue(int day) {
    switch (this.dateType) {
      case 'numeric':
        return this._joinNumericDay(day);
      case 'tailing':
        return addDayNumberChineseTailing(day);
    }

    return "Invalid Type";
  }

  String _joinNumericDay(int day) {
    final String dayString = day.toString();
    if (dayString.length == 1) {
      return "0$dayString";
    }
    return dayString;
  }
}
