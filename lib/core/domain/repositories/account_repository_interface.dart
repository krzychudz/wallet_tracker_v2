import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/data/models/account/params/account_params.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

abstract class AccountRepositoryInterface {
  Future<Either<Failure, List<Account>>> getAccounts();
  Future<Either<Failure, Account>> addAccount(AccountParams account);
  Future<Either<Failure, Account>> getAccountById(String accountId);

  Future<Either<DatabaseRemoveFailure, int>> removeAccountById(
      String accountId);

  Stream<List<Account>> watchAll();
}
