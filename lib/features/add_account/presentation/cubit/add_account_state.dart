import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_account_state.freezed.dart';

@freezed
class AddAccountState with _$AddAccountState {
  factory AddAccountState({
    @Default("") String accountName,
    @Default(0) int initialValue,
    @Default("PLN") String currency,
  }) = _AddAccountState;
}
