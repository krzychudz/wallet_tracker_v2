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
      accountOperationType: $enumDecodeNullable(
              _$AccountOperationTypeEnumMap, json['accountOperationType']) ??
          AccountOperationType.expense,
    );

Map<String, dynamic> _$$_AddAccountOperationStateToJson(
        _$_AddAccountOperationState instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
      'selectedAccountId': instance.selectedAccountId,
      'accountOperationType':
          _$AccountOperationTypeEnumMap[instance.accountOperationType]!,
    };

const _$AccountOperationTypeEnumMap = {
  AccountOperationType.expense: 'expense',
  AccountOperationType.income: 'income',
};
