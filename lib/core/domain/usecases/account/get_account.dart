import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';

import '../../../error/failures.dart';

class GetAccount {
  GetAccount(this._accountRepository);

  final AccountRepositoryInterface _accountRepository;

  Future<Either<Failure, Account>> call({required String accountId}) async {
    return await _accountRepository.getAccountById(accountId);
  }
}
