import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:wallet_tracker_v2/core/input_validators/money_input.dart';
import 'package:wallet_tracker_v2/core/input_validators/non_empty_input.dart';
import 'package:wallet_tracker_v2/features/add_account/domain/entities/new_account_data.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_form/add_account_form_state.dart';

class AddAccountFormCubit extends Cubit<AddAccountFormState> {
  AddAccountFormCubit() : super(AddAccountFormState());

  void onNameChanged(String newName) {
    final name = NonEmptyInput.dirty(value: newName);
    final newFormStatus = _calculateNewFormStatus(
      accountName: name,
      initialValue: state.initialValue,
      currencyCode: state.currencyCode,
    );
    emit(state.copyWith(accountName: name, formStatus: newFormStatus));
  }

  void onValueChanged(String newValue) {
    final initialValue = MoneyInput.dirty(value: newValue);
    final newFormStatus = _calculateNewFormStatus(
      accountName: state.accountName,
      initialValue: initialValue,
      currencyCode: state.currencyCode,
    );

    emit(state.copyWith(initialValue: initialValue, formStatus: newFormStatus));
  }

  void onCurrencyChanged(String? newCurrencyCode) {
    final currencyCode = NonEmptyInput.dirty(value: newCurrencyCode ?? '');
    final newFormStatus = _calculateNewFormStatus(
      accountName: state.accountName,
      initialValue: state.initialValue,
      currencyCode: currencyCode,
    );
    emit(state.copyWith(currencyCode: currencyCode, formStatus: newFormStatus));
  }

  FormzStatus _calculateNewFormStatus(
      {required accountName, required initialValue, required currencyCode}) {
    return Formz.validate([accountName, initialValue, currencyCode]);
  }

  NewAccountData getAccountData() => NewAccountData(
        accountName: state.accountName.value,
        accountBalance: state.initialValue.value,
        currencyCode: state.currencyCode.value,
      );
}
