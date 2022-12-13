import 'package:uuid/uuid.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/params/account_operations_params.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/database/daos/account_operations/account_operations_dao_interface.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_operations_repository_interface.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

class AccountOperationsRepository
    implements AccountOperationsRepositoryInterface {
  AccountOperationsRepository(this._accountOperationsDao);

  final AccountOperationsDaoInterface _accountOperationsDao;

  @override
  Future<Either<Failure, AccountOperation>> addAccountOperation(
      AccountOperationParams accountOperation) async {
    try {
      final accountOperationData = AccountOperation(
        id: const Uuid().v4(),
        accountId: accountOperation.accountId,
        type: accountOperation.type,
        value: accountOperation.value,
        createdAt: DateTime.now(),
      );
      final newAccountOperation =
          await _accountOperationsDao.insertSingle(accountOperationData);
      return Right(newAccountOperation);
    } catch (e) {
      return Left(
          DatabaseInsertFailure('Account operation insert failure: $e'));
    }
  }

  @override
  Future<Either<Failure, List<AccountOperation>>> getAccountOperations() async {
    try {
      final accountsOperations = await _accountOperationsDao.getAll();
      return Right(accountsOperations);
    } catch (e) {
      return Left(DatabaseFetchError('Account operations fetch error: $e'));
    }
  }
}
