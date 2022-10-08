import 'package:sqflite_entities_annotations/src/annotations/sql_field_type.dart';

class SqlField {
  final String fieldName;

  ///
  /// PRIMARY KEY(column_1,column_2,...)
  /// column primary key
  ///
  final bool isPrimaryKey;

  final SqlFieldType fieldType;

  final String? defaultValueExpression;

  final Function? fromRawData;

  final Function? toRawData;

  const SqlField({
    required this.fieldName,
    this.fieldType = SqlFieldType.text,
    this.isPrimaryKey = false,
    this.defaultValueExpression,
    this.fromRawData,
    this.toRawData,
  });
}
