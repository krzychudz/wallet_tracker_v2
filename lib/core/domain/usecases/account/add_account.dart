import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

class AddAccount {
  final AccountRepositoryInterface _repository;

  AddAccount(this._repository);

  Future<Either<Failure, Account>> call({required Account account}) async {
    return await _repository.addAccount(account);
  }
}
