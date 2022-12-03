import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';

abstract class AccountOperationsDaoInterface {
  Future<AccountOperation> insertSingle(AccountOperation account);
  Future<List<AccountOperation>> getAll();
}
