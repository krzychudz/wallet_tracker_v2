import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/get_account.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/remove_account.dart';
import 'package:wallet_tracker_v2/features/account_details/presentation/cubit/account_details_state.dart';

class AccountDetailsCubit extends Cubit<AccountDetailsState> {
  AccountDetailsCubit(
    this._getAccount,
    this._removeAccount,
  ) : super(AccountDetailsState());

  final GetAccount _getAccount;
  final RemoveAccount _removeAccount;

  void getAccountData(String accountId) async {
    final accountData = await _getAccount(accountId: accountId);

    accountData.fold(
      (l) => null,
      (account) => emit(
        state.copyWith(account: account),
      ),
    );
  }

  void onRemovedAccountPressed() async {
    final account = state.account;
    if (account == null) return;

    final removeAccountStatus = await _removeAccount(accountId: account.id);

    removeAccountStatus.fold(
      (failure) => emit(state.copyWith(
        error: failure,
        accountRemoveStatus: AccountRemoveStatus.error,
      )),
      (numberOfRemovedAccounts) => emit(state.copyWith(
        accountRemoveStatus: AccountRemoveStatus.success,
      )),
    );
  }
}
