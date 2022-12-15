import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';

part 'account_operation.freezed.dart';
part 'account_operation.g.dart';

@freezed
class AccountOperation with _$AccountOperation {
  factory AccountOperation({
    required String id,
    required String accountId,
    required AccountOperationType type,
    required int value,
    required DateTime createdAt,
    String? accountName,
  }) = _AccountOperation;

  factory AccountOperation.fromJson(Map<String, dynamic> json) =>
      _$AccountOperationFromJson(json);
}
