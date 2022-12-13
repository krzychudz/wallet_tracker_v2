import 'package:drift/drift.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/database/daos/account_operations/account_operations_dao_interface.dart';
import 'package:wallet_tracker_v2/core/database/database.dart';
import 'package:wallet_tracker_v2/core/database/tables/account/account_table.dart';
import 'package:wallet_tracker_v2/core/database/tables/account_operations/account_operations_table.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/core/extensions/models/account_operations/account_operations_table_data.dart';

part 'account_operations_dao.g.dart';

@DriftAccessor(tables: [AccountOperationsTable, AccountsTable])
class AccountOperationsDao extends DatabaseAccessor<AppDatabase>
    with _$AccountOperationsDaoMixin
    implements AccountOperationsDaoInterface {
  AccountOperationsDao(super.attachedDatabase);

  @override
  Future<List<AccountOperation>> getAll() async {
    final data = await select(accountOperationsTable).get();
    return data
        .map((accountOperationTableData) =>
            accountOperationTableData.toAccountOperation())
        .toList();
  }

  @override
  Future<AccountOperation> insertSingle(
      AccountOperation accountOperation) async {
    final accountOperationTableCompanion =
        accountOperation.toAccountTableData();

    final insertedAccountOperation = await transaction(() async {
      final accountOperationTableData =
          await into(accountOperationsTable).insertReturning(
        accountOperationTableCompanion,
        mode: InsertMode.insertOrReplace,
      );

      final account = await (select(accountsTable)
            ..where((accountTableData) =>
                accountTableData.id.equals(accountOperation.accountId)))
          .getSingle();

      final operationValue =
          accountOperation.type == AccountOperationType.income
              ? accountOperation.value
              : -accountOperation.value;

      final updateAccountData = account.copyWith(
        balance: account.balance + operationValue,
      );

      await into(accountsTable)
          .insert(updateAccountData, mode: InsertMode.insertOrReplace);

      return accountOperationTableData;
    });

    return insertedAccountOperation.toAccountOperation();
  }
}
