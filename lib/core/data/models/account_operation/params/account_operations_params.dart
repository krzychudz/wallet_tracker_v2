import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';

part 'account_operations_params.freezed.dart';

@freezed
class AccountOperationParams with _$AccountOperationParams {
  factory AccountOperationParams({
    required int value,
    required String accountId,
    required AccountOperationType type,
  }) = _AccountOperationParams;
}
