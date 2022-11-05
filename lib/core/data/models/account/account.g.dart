// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      id: json['id'] as String,
      name: json['name'] as String,
      currencyCode: json['currencyCode'] as String,
      balance: json['balance'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'currencyCode': instance.currencyCode,
      'balance': instance.balance,
    };
