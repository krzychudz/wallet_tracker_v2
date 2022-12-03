import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/params/account_operations_params.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

class AddAccountOperation {
  final AccountRepositoryInterface _repository;

  AddAccountOperation(this._repository);

  Future<Either<Failure, AccountOperation>> call(
      {required AccountOperationParams accountOperation}) async {
    return await _repository.addAccountOperation(accountOperation);
  }
}
