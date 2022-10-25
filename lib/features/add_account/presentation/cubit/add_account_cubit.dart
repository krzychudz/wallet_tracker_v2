import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/add_account.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_state.dart';

class AddAccountCubit extends Cubit<AddAccountState> {
  AddAccountCubit(
    this.addAccount,
  ) : super(AddAccountState());

  final AddAccount addAccount;

  void onNameChanged(String newName) {
    emit(state.copyWith(accountName: newName));
  }

  void onValueChanged(String newValue) {
    emit(state.copyWith(initialValue: int.parse(newValue)));
  }

  void onSubmit() {}
}
