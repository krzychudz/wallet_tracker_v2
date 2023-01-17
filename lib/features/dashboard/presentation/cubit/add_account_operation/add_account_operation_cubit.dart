import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/params/account_operations_params.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/get_accounts.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account_operations/add_account_operation.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/core/input_validators/money_input.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/add_account_operation/add_account_operation_state.dart';

class AddAccountOperationCubit extends Cubit<AddAccountOperationState> {
  AddAccountOperationCubit(
    this._getAccounts,
    this._addAccountOperation,
  ) : super(AddAccountOperationState());

  final GetAccounts _getAccounts;
  final AddAccountOperation _addAccountOperation;

  void init({
    required AccountOperationType accountOperationType,
  }) async {
    emit(state.copyWith(accountOperationType: accountOperationType));

    final accounts = await _getAccounts();
    accounts.fold(
      (error) => emit(state.copyWith(
        accountOperationCreationStatus: AccountOperationCreationStatus.error,
      )),
      (accounts) => emit(
        state.copyWith(accounts: accounts),
      ),
    );
  }

  void onSelectedAccount(String? accountId) {
    emit(state.copyWith(selectedAccountId: accountId));
  }

  void onValueChanged(String newValue) {
    final value = MoneyInput.dirty(value: newValue);
    final formzStatus = Formz.validate([value]);
    emit(state.copyWith(accountOperationValue: value, formStatus: formzStatus));
  }

  void onSubmitPressed() async {
    if (state.selectedAccountId == null) return;
    emit(state.copyWith(formStatus: FormzStatus.submissionInProgress));

    final operationValue = state.accountOperationValue.value;

    final accountOperationParams = AccountOperationParams(
      value: int.parse(operationValue),
      accountId: state.selectedAccountId!,
      type: state.accountOperationType,
    );
    final accountOperationResult =
        await _addAccountOperation(accountOperation: accountOperationParams);

    emit(
      state.copyWith(
        formStatus: accountOperationResult.fold(
          (_) => FormzStatus.submissionFailure,
          (_) => FormzStatus.submissionSuccess,
        ),
      ),
    );
  }
}
