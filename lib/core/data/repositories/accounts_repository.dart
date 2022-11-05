import 'package:uuid/uuid.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/data/models/account/params/account_params.dart';
import 'package:wallet_tracker_v2/core/database/daos/account/accounts_dao_interface.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

class AccountRepository extends AccountRepositoryInterface {
  AccountRepository(this._accountsDaoInterface);

  final AccountsDaoInterface _accountsDaoInterface;

  @override
  Future<Either<Failure, Account>> addAccount(AccountParams account) async {
    try {
      final accountData = Account(
        id: const Uuid().v4(),
        name: account.name,
        currencyCode: account.currency,
        balance: account.balance,
      );
      final newAccount = await _accountsDaoInterface.insertSingle(accountData);
      return Right(newAccount);
    } catch (e) {
      return Left(DatabaseInsertFailure('Account insert failure: $e'));
    }
  }

  @override
  Future<Either<Failure, List<Account>>> getAccounts() {
    // TODO: implement getAccounts
    throw UnimplementedError();
  }

  @override
  Stream<List<Account>> watchAll() =>
      _accountsDaoInterface.watchAll().asBroadcastStream();
}
