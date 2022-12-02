import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/get_accounts.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/add_account_operation/add_account_operation_state.dart';

class AddAccountOperationCubit extends Cubit<AddAccountOperationState> {
  AddAccountOperationCubit(this._getAccounts)
      : super(AddAccountOperationState());

  final GetAccounts _getAccounts;

  void init() async {
    final accounts = await _getAccounts();
    accounts.fold(
      (l) => null,
      (accounts) => emit(
        state.copyWith(accounts: accounts),
      ),
    );
  }
}
