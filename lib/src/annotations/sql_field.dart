import 'package:sqflite_entities_annotations/src/annotations/sql_field_type.dart';

typedef DataConverter<TIn, TOut> = TOut Function(TIn);

///
/// Use this annotation to mark model property
/// as needed to be stored in Sqlite storage;
/// More over,
/// Use can specify some additional fields using the [SqlEntityDefinition.fields] property,
/// if you want to save not only model fields (see more details in [SqlField])
///
class SqlField {
  ///
  /// This name will be used to create column name for current model property in resulting table
  ///
  final String fieldName;

  ///
  /// Column primary key
  /// You can use this field to mark several fields to create compound key
  /// used for creation the unique primary key in resulting table
  /// PRIMARY KEY(column_1,column_2,...)
  ///
  final bool isPrimaryKey;

  ///
  /// Sqlite field type. If you omit the field type TEXT will be used by default
  ///
  final SqlFieldType fieldType;

  final String? defaultValueExpression;

  ///
  /// Converted function used to transform Sqlite data to Dart Type
  ///
  final DataConverter? fromRawData;

  ///
  /// Converted function used to transform Dart Type to Sqlite data
  ///
  final DataConverter? toRawData;

  const SqlField({
    required this.fieldName,
    this.fieldType = SqlFieldType.text,
    this.isPrimaryKey = false,
    this.defaultValueExpression,
    this.fromRawData,
    this.toRawData,
  });
}
