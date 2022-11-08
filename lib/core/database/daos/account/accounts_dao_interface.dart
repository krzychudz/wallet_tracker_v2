import 'package:wallet_tracker_v2/core/data/models/account/account.dart';

abstract class AccountsDaoInterface {
  Stream<List<Account>> watchAll();

  Future<Account> insertSingle(Account account);
  Future<Account?> getAccountById(String accountId);
  Future<List<Account>> getAll();
}
