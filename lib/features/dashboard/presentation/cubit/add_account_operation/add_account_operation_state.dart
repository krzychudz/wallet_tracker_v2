import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/core/input_validators/money_input.dart';

part 'add_account_operation_state.freezed.dart';

enum AccountOperationCreationStatus { inProgress, error, success }

@freezed
class AddAccountOperationState with _$AddAccountOperationState {
  factory AddAccountOperationState({
    List<Account>? accounts,
    String? selectedAccountId,
    @Default(MoneyInput.pure()) MoneyInput accountOperationValue,
    @Default(FormzStatus.pure) FormzStatus formStatus,
    @Default(AccountOperationType.expense)
        AccountOperationType accountOperationType,
    AccountOperationCreationStatus? accountOperationCreationStatus,
  }) = _AddAccountOperationState;
}
