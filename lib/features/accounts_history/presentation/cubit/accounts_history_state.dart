import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/data/models/grouped_data/grouped_data.dart';

part 'accounts_history_state.freezed.dart';

@freezed
class AccountsHistoryState with _$AccountsHistoryState {
  const factory AccountsHistoryState.data(
      List<GroupedData<String, AccountOperation>> data) = Data;
  const factory AccountsHistoryState.loading() = Loading;
  const factory AccountsHistoryState.error([String? message]) = Error;
}
