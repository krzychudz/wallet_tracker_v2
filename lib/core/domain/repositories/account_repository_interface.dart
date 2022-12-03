import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/data/models/account/params/account_params.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/params/account_operations_params.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

abstract class AccountRepositoryInterface {
  Future<Either<Failure, List<Account>>> getAccounts();
  Future<Either<Failure, Account>> addAccount(AccountParams account);
  Future<Either<Failure, Account>> getAccountById(String accountId);

  Future<Either<Failure, AccountOperation>> addAccountOperation(
      AccountOperationParams accountOperation);

  Future<Either<DatabaseRemoveFailure, int>> removeAccountById(
      String accountId);

  Stream<List<Account>> watchAll();
}
