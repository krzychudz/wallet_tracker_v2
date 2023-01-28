import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/data/repositories/quick_actions_repository/quick_actions_repository.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/quick_actions_repository/quick_actions_repository.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/watch_accounts.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(
    this._watchAccounts,
    this._quickActionsRepository,
  ) : super(const DashboardState.loading()) {
    _initListeners();
  }

  final WatchAccounts _watchAccounts;
  final QuickActionsRepositoryInterface _quickActionsRepository;

  late StreamSubscription<List<Account>> _accountRepositorySubscription;
  late StreamSubscription<QuickAction> _quickActionSubscription;

  void _initListeners() {
    _accountRepositorySubscription = _watchAccounts().listen((accounts) async {
      emit(DashboardState.data(accounts: accounts));
    });

    _quickActionSubscription =
        _quickActionsRepository.currentActionStream.listen((event) {
      //quick action
    });
  }

  @override
  Future<void> close() async {
    _accountRepositorySubscription.cancel();
    _quickActionSubscription.cancel();
    super.close();
  }
}
