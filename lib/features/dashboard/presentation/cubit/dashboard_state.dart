import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState({
    @Default([]) List<Account> accounts,
  }) = _DashboardState;
}
