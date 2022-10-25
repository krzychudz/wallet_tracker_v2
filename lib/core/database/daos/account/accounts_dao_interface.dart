import 'package:wallet_tracker_v2/core/data/models/account/account.dart';

abstract class AccountsDaoInterface {
  Stream<List<Account>> watchAll();

  void insertSingle(Account account);
  Future<List<Account>> getAll();
}