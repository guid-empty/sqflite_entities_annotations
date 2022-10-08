class SqlFieldType {
  static const SqlFieldType integer = SqlFieldType._('INTEGER');
  static const SqlFieldType real = SqlFieldType._('REAL');
  static const SqlFieldType text = SqlFieldType._('TEXT');
  static const SqlFieldType blob = SqlFieldType._('BLOB');

  static const Iterable<SqlFieldType> values = [integer, real, text, blob];

  final String value;

  const SqlFieldType._(this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SqlFieldType &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  String toString() => 'SqlFieldType{value: $value}';

  static SqlFieldType parse(String raw) => values.firstWhere(
        (element) => element.value == raw,
        orElse: () => SqlFieldType.text,
      );
}
