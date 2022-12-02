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
    );

Map<String, dynamic> _$$_AddAccountOperationStateToJson(
        _$_AddAccountOperationState instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
      'selectedAccountId': instance.selectedAccountId,
    };
