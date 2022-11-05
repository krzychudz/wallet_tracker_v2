import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/watch_accounts.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(
    WatchAccounts watchAccounts,
  ) : super(DashboardState()) {
    _accountRepositorySubscription = watchAccounts().listen((accounts) {
      emit(state.copyWith(accounts: accounts));
    });
  }

  late StreamSubscription<List<Account>> _accountRepositorySubscription;

  @override
  Future<void> close() async {
    _accountRepositorySubscription.cancel();
    super.close();
  }
}
