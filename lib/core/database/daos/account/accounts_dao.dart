import 'package:drift/drift.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/database/daos/account/accounts_dao_interface.dart';
import 'package:wallet_tracker_v2/core/database/database.dart';
import 'package:wallet_tracker_v2/core/database/tables/account/account_table.dart';
import 'package:wallet_tracker_v2/core/extensions/models/account/account_table_data.dart';

part 'accounts_dao.g.dart';

@DriftAccessor(tables: [AccountsTable])
class AccountsDao extends DatabaseAccessor<AppDatabase>
    with _$AccountsDaoMixin
    implements AccountsDaoInterface {
  AccountsDao(super.attachedDatabase);

  @override
  Future<List<Account>> getAll() async {
    final data = await select(accountsTable).get();
    return data
        .map((accountsTableData) => accountsTableData.toAccount())
        .toList();
  }

  @override
  Future<Account> insertSingle(Account account) async {
    final accountTableCompanion = account.toAccountTableData();
    final accountsTableData = await into(accountsTable).insertReturning(
      accountTableCompanion,
      mode: InsertMode.insertOrReplace,
    );
    return accountsTableData.toAccount();
  }

  @override
  Stream<List<Account>> watchAll() =>
      select(accountsTable).watch().map((accountsTableData) => accountsTableData
          .map((accountTableData) => accountTableData.toAccount())
          .toList());
}
