import 'package:drift/drift.dart';

class AccountsTable extends Table {
  TextColumn get id => text()();
  IntColumn get balance => integer().check(balance.isBiggerOrEqualValue(0))();
  TextColumn get currencyCode => text()();
  TextColumn get name => text().withLength(min: 3)();

  @override
  Set<Column> get primaryKey => {id};
}
