import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/input_validators/money_input.dart';
import 'package:wallet_tracker_v2/core/input_validators/non_empty_input.dart';

part 'add_account_form_state.freezed.dart';

@freezed
class AddAccountFormState with _$AddAccountFormState {
  factory AddAccountFormState({
    @Default(NonEmptyInput.pure()) NonEmptyInput accountName,
    @Default(MoneyInput.pure()) MoneyInput initialValue,
    @Default(NonEmptyInput.pure()) NonEmptyInput currencyCode,
    @Default(FormzStatus.pure) FormzStatus formStatus,
  }) = _AddAccountFormState;
}
