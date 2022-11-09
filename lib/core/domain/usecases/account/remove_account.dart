import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

class RemoveAccount {
  RemoveAccount(this._accountRepository);

  final AccountRepositoryInterface _accountRepository;

  Future<Either<Failure, int>> call({required String accountId}) async {
    return _accountRepository.removeAccountById(accountId);
  }
}
