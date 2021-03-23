import 'package:localizations_date/src/local/declare/date/day.dart';
import 'package:localizations_date/src/local/declare/date/month.dart';

class LocalFormatDateConfig {
  final bool includesDate;

  final bool includesYear;
  final LocalFormatDateMonthConfig monthConfig;
  final LocalFormatDateDayConfig dayConfig;

  const LocalFormatDateConfig({
    this.includesDate = true,
    this.includesYear = true,
    this.monthConfig = LocalFormatDateMonthConfig.numeric,
    this.dayConfig = LocalFormatDateDayConfig.numeric,
  });

  static const LocalFormatDateConfig all = const LocalFormatDateConfig(
    includesDate: true,
    includesYear: true,
    monthConfig: LocalFormatDateMonthConfig.fullText,
    dayConfig: LocalFormatDateDayConfig.tailing,
  );

  static const LocalFormatDateConfig none = const LocalFormatDateConfig(
    includesDate: false,
    includesYear: false,
    monthConfig: LocalFormatDateMonthConfig.none,
    dayConfig: LocalFormatDateDayConfig.none,
  );

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
