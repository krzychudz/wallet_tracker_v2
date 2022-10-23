import 'package:drift/drift.dart';

class Income extends Table {
  TextColumn get id => text()();
  IntColumn get value => integer()();
  TextColumn get accountId => text()();

  @override
  Set<Column> get primaryKey => {id};
}
