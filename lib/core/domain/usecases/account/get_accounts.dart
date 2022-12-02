import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/watch_accounts.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

class GetAccounts {
  GetAccounts(this._accountRepository);

  final AccountRepositoryInterface _accountRepository;

  Future<Either<Failure, List<Account>>> call() async {
    final accountsData = await _accountRepository.getAccounts();
    return accountsData.map((accounts) => accounts..sort(sortAccounts));
  }
}
