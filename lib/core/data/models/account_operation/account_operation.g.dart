// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountOperation _$$_AccountOperationFromJson(Map<String, dynamic> json) =>
    _$_AccountOperation(
      id: json['id'] as String,
      accountId: json['accountId'] as String,
      type: $enumDecode(_$AccountOperationTypeEnumMap, json['type']),
      value: json['value'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      accountName: json['accountName'] as String?,
    );

Map<String, dynamic> _$$_AccountOperationToJson(_$_AccountOperation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'type': _$AccountOperationTypeEnumMap[instance.type]!,
      'value': instance.value,
      'createdAt': instance.createdAt.toIso8601String(),
      'accountName': instance.accountName,
    };

const _$AccountOperationTypeEnumMap = {
  AccountOperationType.expense: 'expense',
  AccountOperationType.income: 'income',
};
