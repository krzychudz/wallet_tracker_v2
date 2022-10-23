import 'dart:io';

import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wallet_tracker_v2/core/database/tables/account/account_table.dart';
import 'package:path/path.dart' as p;
import 'package:drift/native.dart';
import 'package:wallet_tracker_v2/core/database/tables/expense/expense_table.dart';
import 'package:wallet_tracker_v2/core/database/tables/income/income_table.dart';

part 'database.g.dart';

@DriftDatabase(tables: [Account, Expense, Income])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

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
