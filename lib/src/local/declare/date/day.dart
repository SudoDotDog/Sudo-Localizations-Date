import 'package:localizations_date/src/util/texting/en.dart';
import 'package:localizations_date/src/util/texting/zh.dart';

class LocalFormatDateDateConfig {
  final String dateType;

  const LocalFormatDateDateConfig(this.dateType);

  static const LocalFormatDateDateConfig numeric =
      const LocalFormatDateDateConfig('numeric');

  static const LocalFormatDateDateConfig semiFullText =
      const LocalFormatDateDateConfig('semi-full-text');

  static const LocalFormatDateDateConfig fullText =
      const LocalFormatDateDateConfig('full-text');

  static const LocalFormatDateDateConfig none =
      const LocalFormatDateDateConfig('none');

  bool includes() {
    return this.dateType != 'none';
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
