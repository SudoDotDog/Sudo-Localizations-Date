import 'package:localizations_date/src/util/texting/en.dart';
import 'package:localizations_date/src/util/texting/zh.dart';

class LocalFormatDateMonthConfig {
  final String monthType;

  const LocalFormatDateMonthConfig(this.monthType);

  static const LocalFormatDateMonthConfig numeric =
      const LocalFormatDateMonthConfig('numeric');

  static const LocalFormatDateMonthConfig semiFullText =
      const LocalFormatDateMonthConfig('semi-full-text');

  static const LocalFormatDateMonthConfig fullText =
      const LocalFormatDateMonthConfig('full-text');

  static const LocalFormatDateMonthConfig none =
      const LocalFormatDateMonthConfig('none');

  bool includes() {
    return this.monthType != 'none';
  }

  String getEnglishMonthValue(int month) {
    switch (this.monthType) {
      case 'numeric':
        return month.toString();
      case 'semi-full-text':
        return getMonthEnglishTexting(month);
      case 'full-text':
        return getMonthEnglishTexting(month, fullText: true);
    }

    return "Invalid Type";
  }

  String getChineseMonthValue(int month) {
    switch (this.monthType) {
      case 'numeric':
        return month.toString();
      case 'semi-full-text':
      case 'full-text':
        return getMonthChineseTexting(month);
    }

    return "Invalid Type";
  }
}
