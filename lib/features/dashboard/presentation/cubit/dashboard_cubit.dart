import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/watch_accounts.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(
    this._watchAccounts,
  ) : super(const DashboardState.loading()) {
    _initListeners();
  }

  final WatchAccounts _watchAccounts;

  late StreamSubscription<List<Account>> _accountRepositorySubscription;

  void _initListeners() {
    _accountRepositorySubscription = _watchAccounts().listen((accounts) async {
      emit(DashboardState.data(accounts: accounts));
    });
  }

  @override
  Future<void> close() async {
    _accountRepositorySubscription.cancel();
    super.close();
  }
}
