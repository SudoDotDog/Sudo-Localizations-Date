import 'package:localizations_date/src/local/declare/date/day.dart';
import 'package:localizations_date/src/local/declare/date/month.dart';
import 'package:localizations_date/src/local/declare/date/separator.dart';

class LocalFormatDateConfig {
  final bool includesDate;

  final LocalFormatDateSeparatorConfig separator;

  final bool includesYear;
  final LocalFormatDateMonthConfig monthConfig;
  final LocalFormatDateDayConfig dayConfig;

  const LocalFormatDateConfig({
    this.includesDate = true,
    this.separator = LocalFormatDateSeparatorConfig.dash,
    this.includesYear = true,
    this.monthConfig = LocalFormatDateMonthConfig.numeric,
    this.dayConfig = LocalFormatDateDayConfig.numeric,
  });

  static const LocalFormatDateConfig all = const LocalFormatDateConfig(
    includesDate: true,
    separator: LocalFormatDateSeparatorConfig.none,
    includesYear: true,
    monthConfig: LocalFormatDateMonthConfig.fullText,
    dayConfig: LocalFormatDateDayConfig.tailing,
  );

  static const LocalFormatDateConfig none = const LocalFormatDateConfig(
    includesDate: false,
    separator: LocalFormatDateSeparatorConfig.dash,
    includesYear: false,
    monthConfig: LocalFormatDateMonthConfig.none,
    dayConfig: LocalFormatDateDayConfig.none,
  );

  bool get hasSeparator {
    return this.separator.hasSeparator();
  }

  bool get includesMonth {
    return this.monthConfig.includes();
  }

  bool get includesDay {
    return this.dayConfig.includes();
  }

  bool ensureIncludes() {
    if (!this.includesDate) {
      return false;
    }
    return this.includesYear || this.includesMonth || this.includesDay;
  }
}
