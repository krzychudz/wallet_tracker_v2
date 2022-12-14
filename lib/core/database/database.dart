import 'dart:io';

import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wallet_tracker_v2/core/database/daos/account/accounts_dao.dart';
import 'package:wallet_tracker_v2/core/database/daos/account_operations/account_operations_dao.dart';
import 'package:wallet_tracker_v2/core/database/tables/account/account_table.dart';
import 'package:path/path.dart' as p;
import 'package:drift/native.dart';
import 'package:wallet_tracker_v2/core/database/tables/account_operations/account_operations_table.dart';
import 'package:wallet_tracker_v2/core/database/tables/expense/expense_table.dart';
import 'package:wallet_tracker_v2/core/database/tables/income/income_table.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:uuid/uuid.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [AccountsTable, ExpensesTable, IncomesTable, AccountOperationsTable],
  daos: [AccountsDao, AccountOperationsDao],
)
class AppDatabase extends _$AppDatabase {
  static final AppDatabase _instance = AppDatabase._();

  AppDatabase._() : super(_openConnection());

  factory AppDatabase() => _instance;

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    return NativeDatabase(file);
  });
}
