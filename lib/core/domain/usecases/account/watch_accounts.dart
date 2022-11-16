import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';

int sortAccounts(Account first, Account second) {
  return first.currencyCode.compareTo(second.currencyCode);
}

class WatchAccounts {
  final AccountRepositoryInterface _repository;

  WatchAccounts(this._repository);

  Stream<List<Account>> call() {
    return _repository
        .watchAll()
        .map((accounts) => accounts..sort(sortAccounts));
  }
}
