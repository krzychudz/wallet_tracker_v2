import 'package:drift/drift.dart';
import 'package:wallet_tracker_v2/core/database/database.dart';
import 'package:wallet_tracker_v2/core/database/tables/account/account_table.dart';

part 'accounts_dao.g.dart';

@DriftAccessor(tables: [Accounts])
class AccountsDao extends DatabaseAccessor<AppDatabase>
    with _$AccountsDaoMixin {
  AccountsDao(super.attachedDatabase);
}
