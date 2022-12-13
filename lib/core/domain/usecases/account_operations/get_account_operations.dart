import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/params/account_operations_params.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_operations_repository_interface.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

int sortAccountOperations(AccountOperation first, AccountOperation second) {
  return first.createdAt.compareTo(second.createdAt);
}

class GetAccountOperations {
  final AccountOperationsRepositoryInterface _repository;

  GetAccountOperations(this._repository);

  Future<Either<Failure, List<AccountOperation>>> call(
      {required AccountOperationParams accountOperation}) async {
    final accountOperationsData = await _repository.getAccountOperations();
    return accountOperationsData.map(
        (accountOperations) => accountOperations..sort(sortAccountOperations));
  }
}
