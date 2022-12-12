import 'package:uuid/uuid.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:dartz/dartz.dart';
import 'package:wallet_tracker_v2/core/data/models/account/params/account_params.dart';
import 'package:wallet_tracker_v2/core/database/daos/account/accounts_dao_interface.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

class AccountRepository extends AccountRepositoryInterface {
  AccountRepository(this._accountsDao);

  final AccountsDaoInterface _accountsDao;

  @override
  Future<Either<Failure, Account>> addAccount(AccountParams account) async {
    try {
      final accountData = Account(
        id: const Uuid().v4(),
        name: account.name,
        currencyCode: account.currency,
        balance: account.balance,
      );
      final newAccount = await _accountsDao.insertSingle(accountData);
      return Right(newAccount);
    } catch (e) {
      return Left(DatabaseInsertFailure('Account insert failure: $e'));
    }
  }

  @override
  Future<Either<Failure, List<Account>>> getAccounts() async {
    try {
      final accounts = await _accountsDao.getAll();
      return Right(accounts);
    } catch (e) {
      return Left(DatabaseFetchError('Accounts fetch failure: $e'));
    }
  }

  @override
  Stream<List<Account>> watchAll() =>
      _accountsDao.watchAll().asBroadcastStream();

  @override
  Future<Either<Failure, Account>> getAccountById(String accountId) async {
    final account = await _accountsDao.getAccountById(accountId);

    if (account == null) {
      return Left(DatabaseNoElementFound(
          "No Account found in database - ID $accountId"));
    }

    return Right(account);
  }

  @override
  Future<Either<DatabaseRemoveFailure, int>> removeAccountById(
      String accountId) async {
    try {
      final numberOfDeletedRows =
          await _accountsDao.removeAccountById(accountId);
      return Right(numberOfDeletedRows);
    } catch (e) {
      return Left(DatabaseRemoveFailure('Account delete failure: $e'));
    }
  }
}
