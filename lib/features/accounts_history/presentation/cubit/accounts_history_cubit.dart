import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account_operations/get_account_operations.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/cubit/accounts_history_state.dart';
import 'package:wallet_tracker_v2/core/extensions/models/account_operations/account_operations.dart';

class AccountsHistoryCubit extends Cubit<AccountsHistoryState> {
  AccountsHistoryCubit(this._getAccountOperations)
      : super(const AccountsHistoryState.loading());

  final GetAccountOperations _getAccountOperations;

  void onPageEntered() async {
    final accountOperationsData = await _getAccountOperations();
    accountOperationsData.map(
      (accountOperations) => emit(
        AccountsHistoryState.data(accountOperations.groupedByData),
      ),
    );
  }
}
