import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/error/failures.dart';

part 'account_details_state.freezed.dart';

enum AccountRemoveStatus { idle, inProgress, success, error }

@freezed
class AccountDetailsState with _$AccountDetailsState {
  factory AccountDetailsState({
    Account? account,
    @Default(AccountRemoveStatus.idle) AccountRemoveStatus accountRemoveStatus,
    DatabaseRemoveFailure? error,
  }) = _AccountDetailsState;
}
