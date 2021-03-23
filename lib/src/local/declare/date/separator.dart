class LocalFormatDateSeparatorConfig {
  final String separator;

  const LocalFormatDateSeparatorConfig(this.separator);

  static const LocalFormatDateSeparatorConfig dash =
      const LocalFormatDateSeparatorConfig('-');

  static const LocalFormatDateSeparatorConfig none =
      const LocalFormatDateSeparatorConfig(null);

  bool hasSeparator() {
    return this.separator != null;
  }
}
