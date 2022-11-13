import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

part 'add_account_state.freezed.dart';

enum AccountCreationState { idle, inProgress, success, failure }

@freezed
class AddAccountState with _$AddAccountState {
  factory AddAccountState({
    @Default("") String accountName,
    @Default(0) int initialValue,
    String? currencyCode,
    @Default(AccountCreationState.idle)
        AccountCreationState accountCreationState,
    Account? accountData,
    Failure? failure,
  }) = _AddAccountState;
}
