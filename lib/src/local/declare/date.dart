import 'package:localizations_date/src/local/declare/date/day.dart';
import 'package:localizations_date/src/local/declare/date/month.dart';
import 'package:localizations_date/src/local/declare/date/separator.dart';
import 'package:localizations_date/src/local/declare/date/year.dart';

class LocalFormatDateConfig {
  final LocalFormatDateSeparatorConfig separator;

  final LocalFormatDateYearConfig yearConfig;
  final LocalFormatDateMonthConfig monthConfig;
  final LocalFormatDateDayConfig dayConfig;

  const LocalFormatDateConfig({
    this.separator = LocalFormatDateSeparatorConfig.dash,
    this.yearConfig = LocalFormatDateYearConfig.numeric,
    this.monthConfig = LocalFormatDateMonthConfig.numeric,
    this.dayConfig = LocalFormatDateDayConfig.numeric,
  });

  static const LocalFormatDateConfig all = const LocalFormatDateConfig(
    separator: LocalFormatDateSeparatorConfig.dash,
    yearConfig: LocalFormatDateYearConfig.numeric,
    monthConfig: LocalFormatDateMonthConfig.fullText,
    dayConfig: LocalFormatDateDayConfig.tailing,
  );

  static const LocalFormatDateConfig none = const LocalFormatDateConfig(
    separator: LocalFormatDateSeparatorConfig.none,
    yearConfig: LocalFormatDateYearConfig.none,
    monthConfig: LocalFormatDateMonthConfig.none,
    dayConfig: LocalFormatDateDayConfig.none,
  );

  bool get includesDate {
    return this.includesYear || this.includesMonth || this.includesDay;
  }

  bool get hasSeparator {
    return this.separator.hasSeparator();
  }

  bool get includesYear {
    return this.yearConfig.includes();
  }

  bool get includesMonth {
    return this.monthConfig.includes();
  }

  bool get includesDay {
    return this.dayConfig.includes();
  }
}
