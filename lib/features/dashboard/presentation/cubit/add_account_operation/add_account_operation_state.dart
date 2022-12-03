import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';

part 'add_account_operation_state.freezed.dart';
part 'add_account_operation_state.g.dart';

@freezed
class AddAccountOperationState with _$AddAccountOperationState {
  factory AddAccountOperationState({
    List<Account>? accounts,
    String? selectedAccountId,
    @Default(AccountOperationType.expense)
        AccountOperationType accountOperationType,
  }) = _AddAccountOperationState;

  factory AddAccountOperationState.fromJson(Map<String, dynamic> json) =>
      _$AddAccountOperationStateFromJson(json);
}
