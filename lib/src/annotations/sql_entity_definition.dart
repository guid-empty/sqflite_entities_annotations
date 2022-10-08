import 'package:sqflite_entities_annotations/src/annotations/sql_field.dart';

class SqlEntityDefinition {
  final String tableName;
  final Iterable<SqlField> fields;

  const SqlEntityDefinition({
    required this.tableName,
    this.fields = const [],
  });
}
