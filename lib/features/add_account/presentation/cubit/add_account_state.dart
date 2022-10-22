import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_account_state.freezed.dart';
part 'add_account_state.g.dart';

@freezed
class AddAccountState with _$AddAccountState {
  factory AddAccountState() = _AddAccountState;

  factory AddAccountState.fromJson(Map<String, dynamic> json) =>
      _$AddAccountStateFromJson(json);
}
