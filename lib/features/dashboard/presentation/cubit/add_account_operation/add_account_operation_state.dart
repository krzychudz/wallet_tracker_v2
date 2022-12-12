import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';

part 'add_account_operation_state.freezed.dart';
part 'add_account_operation_state.g.dart';

enum AccountOperationCreationStatus { inProgress, error, success }

@freezed
class AddAccountOperationState with _$AddAccountOperationState {
  factory AddAccountOperationState({
    List<Account>? accounts,
    String? selectedAccountId,
    @Default("") String value,
    @Default(AccountOperationType.expense)
        AccountOperationType accountOperationType,
    AccountOperationCreationStatus? accountOperationCreationStatus,
  }) = _AddAccountOperationState;

  factory AddAccountOperationState.fromJson(Map<String, dynamic> json) =>
      _$AddAccountOperationStateFromJson(json);
}
