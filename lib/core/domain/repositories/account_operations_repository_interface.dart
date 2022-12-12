import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/params/account_operations_params.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

abstract class AccountOperationsRepositoryInterface {
  Future<Either<Failure, AccountOperation>> addAccountOperation(
      AccountOperationParams accountOperation);
}
