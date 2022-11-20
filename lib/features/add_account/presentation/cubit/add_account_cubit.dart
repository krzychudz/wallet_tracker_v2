import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/data/models/account/params/account_params.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/add_account.dart';
import 'package:wallet_tracker_v2/core/extensions/money/money.dart';
import 'package:wallet_tracker_v2/features/add_account/domain/entities/new_account_data.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_state.dart';

class AddAccountCubit extends Cubit<AddAccountState> {
  AddAccountCubit(
    this.addAccount,
  ) : super(AddAccountState());

  final AddAccount addAccount;

  void onSubmit(NewAccountData accountData) async {
    emit(state.copyWith(accountCreationState: AccountCreationState.inProgress));

    final currencyCode = accountData.currencyCode;
    final balance = accountData.accountBalance.parseMoneyToInt(currencyCode);

    final accountParams = AccountParams(
      name: accountData.accountName,
      currency: currencyCode,
      balance: balance,
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
