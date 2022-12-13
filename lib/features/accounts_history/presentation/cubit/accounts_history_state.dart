import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';

part 'accounts_history_state.freezed.dart';

@freezed
class AccountsHistoryState with _$AccountsHistoryState {
  const factory AccountsHistoryState.data(List<AccountOperation> data) = Data;
  const factory AccountsHistoryState.loading() = Loading;
  const factory AccountsHistoryState.error([String? message]) = Error;
}
