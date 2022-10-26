import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_params.freezed.dart';

@freezed
class AccountParams with _$AccountParams {
  factory AccountParams({
    required String name,
    required String currency,
    required int balance,
  }) = _AccountParams;
}
