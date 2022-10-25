import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

class AccountRepository extends AccountRepositoryInterface {
  @override
  Future<Either<Failure, Account>> addAccount(Account account) {
    // TODO: implement addAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Account>>> getAccounts() {
    // TODO: implement getAccounts
    throw UnimplementedError();
  }
}
