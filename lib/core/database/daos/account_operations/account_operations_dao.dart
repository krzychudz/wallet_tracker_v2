import 'package:drift/drift.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/database/daos/account_operations/account_operations_dao_interface.dart';
import 'package:wallet_tracker_v2/core/database/database.dart';
import 'package:wallet_tracker_v2/core/database/tables/account_operations/account_operations_table.dart';
import 'package:wallet_tracker_v2/core/extensions/models/account_operations/account_operations_table_data.dart';

part 'account_operations_dao.g.dart';

@DriftAccessor(tables: [AccountOperationsTable])
class AccountOperationsDao extends DatabaseAccessor<AppDatabase>
    with _$AccountOperationsDaoMixin
    implements AccountOperationsDaoInterface {
  AccountOperationsDao(super.attachedDatabase);

  @override
  Future<List<AccountOperation>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<AccountOperation> insertSingle(
      AccountOperation accountOperation) async {
    final accountOperationTableCompanion =
        accountOperation.toAccountTableData();
    final accountOperationTableData =
        await into(accountOperationsTable).insertReturning(
      accountOperationTableCompanion,
      mode: InsertMode.insertOrReplace,
    );
    return accountOperationTableData.toAccountOperation();
  }
}
