import 'package:drift/drift.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/database/database.dart' hide Account;

extension AccountOperationsTableDataExt on AccountOperationsTableData {
  AccountOperation toAccountOperation() {
    return AccountOperation(
      id: id,
      accountId: accountId,
      value: value,
      createdAt: createdAt,
      type: type,
    );
  }
}

extension AccountCompanionExt on AccountOperation {
  AccountOperationsTableCompanion toAccountTableData() {
    return AccountOperationsTableCompanion.insert(
      id: Value(id),
      accountId: accountId,
      value: Value(value),
      createdAt: createdAt,
      type: type,
    );
  }
}
