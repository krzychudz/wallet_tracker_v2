import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';

part 'account_details_state.freezed.dart';

@freezed
class AccountDetailsState with _$AccountDetailsState {
  factory AccountDetailsState({
    Account? account,
  }) = _AccountDetailsState;
}
