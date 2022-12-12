import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';

class AccountOperationsTable extends Table {
  TextColumn get id => text().withDefault(Constant(const Uuid().v4()))();
  TextColumn get accountId => text()();
  IntColumn get value => integer().withDefault(const Constant(0))();
  IntColumn get type => intEnum<AccountOperationType>()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
