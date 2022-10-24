import 'package:drift/drift.dart';
import 'package:wallet_tracker_v2/core/database/daos/account/accounts_dao_interface.dart';
import 'package:wallet_tracker_v2/core/database/database.dart';
import 'package:wallet_tracker_v2/core/database/tables/account/account_table.dart';

part 'accounts_dao.g.dart';

@DriftAccessor(tables: [Accounts])
class AccountsDao extends DatabaseAccessor<AppDatabase>
    with _$AccountsDaoMixin
    implements AccountsDaoInterface {
  AccountsDao(super.attachedDatabase);

  @override
  Future<List<Account>> getAll() {
    return select(accounts).get();
  }

  @override
  void insertSingle(Account account) {
    final accountCompanion = AccountsCompanion.insert(
      id: account.id,
      balance: account.balance,
      currencyCode: account.currencyCode,
      name: account.name,
    );

    into(accounts).insert(accountCompanion);
  }

  @override
  Stream<List<Account>> watchAll() => select(accounts).watch();
}
