import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';

part 'dashboard_state.freezed.dart';

enum AccountLoadingStatus { inProgress, done }

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.loading() = Loading;
  const factory DashboardState.data({
    required List<Account> accounts,
  }) = Data;
}
