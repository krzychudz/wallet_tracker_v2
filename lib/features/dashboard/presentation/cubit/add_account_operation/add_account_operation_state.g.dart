// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_account_operation_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddAccountOperationState _$$_AddAccountOperationStateFromJson(
        Map<String, dynamic> json) =>
    _$_AddAccountOperationState(
      accounts: (json['accounts'] as List<dynamic>?)
          ?.map((e) => Account.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedAccountId: json['selectedAccountId'] as String?,
      value: json['value'] as String? ?? "",
      accountOperationType: $enumDecodeNullable(
              _$AccountOperationTypeEnumMap, json['accountOperationType']) ??
          AccountOperationType.expense,
      accountOperationCreationStatus: $enumDecodeNullable(
          _$AccountOperationCreationStatusEnumMap,
          json['accountOperationCreationStatus']),
    );

Map<String, dynamic> _$$_AddAccountOperationStateToJson(
        _$_AddAccountOperationState instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
      'selectedAccountId': instance.selectedAccountId,
      'value': instance.value,
      'accountOperationType':
          _$AccountOperationTypeEnumMap[instance.accountOperationType]!,
      'accountOperationCreationStatus': _$AccountOperationCreationStatusEnumMap[
          instance.accountOperationCreationStatus],
    };

const _$AccountOperationTypeEnumMap = {
  AccountOperationType.expense: 'expense',
  AccountOperationType.income: 'income',
};

const _$AccountOperationCreationStatusEnumMap = {
  AccountOperationCreationStatus.inProgress: 'inProgress',
  AccountOperationCreationStatus.error: 'error',
  AccountOperationCreationStatus.success: 'success',
};
