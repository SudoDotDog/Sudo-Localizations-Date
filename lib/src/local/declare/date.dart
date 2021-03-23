import 'package:localizations_date/src/local/declare/date/month.dart';

class LocalFormatDateConfig {
  final bool includesDate;

  final bool includesYear;
  final LocalFormatDateMonthConfig monthConfig;
  final bool includesDay;

  const LocalFormatDateConfig({
    this.includesDate = true,
    this.includesYear = true,
    this.monthConfig = LocalFormatDateMonthConfig.numeric,
    this.includesDay = true,
  });

  static const LocalFormatDateConfig all = const LocalFormatDateConfig(
    includesDate: true,
    includesYear: true,
    monthConfig: LocalFormatDateMonthConfig.fullText,
    includesDay: true,
  );

  static const LocalFormatDateConfig none = const LocalFormatDateConfig(
    includesDate: false,
    includesYear: false,
    monthConfig: LocalFormatDateMonthConfig.none,
    includesDay: false,
  );

  bool get includesMonth {
    return this.monthConfig.includes();
  }

  bool ensureIncludes() {
    if (!this.includesDate) {
      return false;
    }
    return this.includesYear || this.includesMonth || this.includesDay;
  }
}
