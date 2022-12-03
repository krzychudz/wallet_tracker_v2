import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/get_accounts.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/add_account_operation/add_account_operation_state.dart';

class AddAccountOperationCubit extends Cubit<AddAccountOperationState> {
  AddAccountOperationCubit(this._getAccounts)
      : super(AddAccountOperationState());

  final GetAccounts _getAccounts;

  void init({
    required AccountOperationType accountOperationType,
  }) async {
    emit(state.copyWith(accountOperationType: accountOperationType));

    final accounts = await _getAccounts();
    accounts.fold(
      (error) => null,
      (accounts) => emit(
        state.copyWith(accounts: accounts),
      ),
    );
  }

  void onSelectedAccount(String? accountId) {
    emit(state.copyWith(selectedAccountId: accountId));
  }

  void onSubmitPressed() {}
}
