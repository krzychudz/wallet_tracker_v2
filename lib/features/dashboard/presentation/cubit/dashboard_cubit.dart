import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(
    this._accountRepository,
  ) : super(DashboardState()) {
    print("HERE CREATE");

    _accountRepository.watchAll().listen((accounts) {
      emit(state.copyWith(accounts: accounts));
    });
  }

  final AccountRepositoryInterface _accountRepository;
}
