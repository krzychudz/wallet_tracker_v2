import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/data/models/account/params/account_params.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/add_account.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_state.dart';

class AddAccountCubit extends Cubit<AddAccountState> {
  AddAccountCubit(
    this.addAccount,
  ) : super(AddAccountState());

  final AddAccount addAccount;

  void onNameChanged(String newName) {
    emit(state.copyWith(accountName: newName));
  }

  void onValueChanged(String newValue) {
    emit(state.copyWith(initialValue: int.parse(newValue)));
  }

  void onCurrencyChanged(String? newCurrencyCode) {
    if (newCurrencyCode == null) return;
    emit(state.copyWith(currencyCode: newCurrencyCode));
  }

  void onSubmit() async {
    emit(state.copyWith(accountCreationState: AccountCreationState.inProgress));

    final accountParams = AccountParams(
      name: state.accountName,
      currency: state.currencyCode ?? '',
      balance: state.initialValue,
    );

    final accountCreateResult = await addAccount(account: accountParams);

    accountCreateResult.fold(
      (error) => emit(state.copyWith(
          failure: error, accountCreationState: AccountCreationState.failure)),
      (account) => emit(state.copyWith(
          accountData: account,
          accountCreationState: AccountCreationState.success)),
    );
  }
}
