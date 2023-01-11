// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountOperation _$AccountOperationFromJson(Map<String, dynamic> json) {
  return _AccountOperation.fromJson(json);
}

/// @nodoc
mixin _$AccountOperation {
  String get id => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  AccountOperationType get type => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;
  String? get accountName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountOperationCopyWith<AccountOperation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountOperationCopyWith<$Res> {
  factory $AccountOperationCopyWith(
          AccountOperation value, $Res Function(AccountOperation) then) =
      _$AccountOperationCopyWithImpl<$Res, AccountOperation>;
  @useResult
  $Res call(
      {String id,
      String accountId,
      AccountOperationType type,
      int value,
      DateTime createdAt,
      String? currencyCode,
      String? accountName});
}

/// @nodoc
class _$AccountOperationCopyWithImpl<$Res, $Val extends AccountOperation>
    implements $AccountOperationCopyWith<$Res> {
  _$AccountOperationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? type = null,
    Object? value = null,
    Object? createdAt = null,
    Object? currencyCode = freezed,
    Object? accountName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountOperationType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountOperationCopyWith<$Res>
    implements $AccountOperationCopyWith<$Res> {
  factory _$$_AccountOperationCopyWith(
          _$_AccountOperation value, $Res Function(_$_AccountOperation) then) =
      __$$_AccountOperationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String accountId,
      AccountOperationType type,
      int value,
      DateTime createdAt,
      String? currencyCode,
      String? accountName});
}

/// @nodoc
class __$$_AccountOperationCopyWithImpl<$Res>
    extends _$AccountOperationCopyWithImpl<$Res, _$_AccountOperation>
    implements _$$_AccountOperationCopyWith<$Res> {
  __$$_AccountOperationCopyWithImpl(
      _$_AccountOperation _value, $Res Function(_$_AccountOperation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? type = null,
    Object? value = null,
    Object? createdAt = null,
    Object? currencyCode = freezed,
    Object? accountName = freezed,
  }) {
    return _then(_$_AccountOperation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountOperationType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountOperation implements _AccountOperation {
  _$_AccountOperation(
      {required this.id,
      required this.accountId,
      required this.type,
      required this.value,
      required this.createdAt,
      this.currencyCode,
      this.accountName});

  factory _$_AccountOperation.fromJson(Map<String, dynamic> json) =>
      _$$_AccountOperationFromJson(json);

  @override
  final String id;
  @override
  final String accountId;
  @override
  final AccountOperationType type;
  @override
  final int value;
  @override
  final DateTime createdAt;
  @override
  final String? currencyCode;
  @override
  final String? accountName;

  @override
  String toString() {
    return 'AccountOperation(id: $id, accountId: $accountId, type: $type, value: $value, createdAt: $createdAt, currencyCode: $currencyCode, accountName: $accountName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountOperation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountId, type, value,
      createdAt, currencyCode, accountName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountOperationCopyWith<_$_AccountOperation> get copyWith =>
      __$$_AccountOperationCopyWithImpl<_$_AccountOperation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountOperationToJson(
      this,
    );
  }
}

abstract class _AccountOperation implements AccountOperation {
  factory _AccountOperation(
      {required final String id,
      required final String accountId,
      required final AccountOperationType type,
      required final int value,
      required final DateTime createdAt,
      final String? currencyCode,
      final String? accountName}) = _$_AccountOperation;

  factory _AccountOperation.fromJson(Map<String, dynamic> json) =
      _$_AccountOperation.fromJson;

  @override
  String get id;
  @override
  String get accountId;
  @override
  AccountOperationType get type;
  @override
  int get value;
  @override
  DateTime get createdAt;
  @override
  String? get currencyCode;
  @override
  String? get accountName;
  @override
  @JsonKey(ignore: true)
  _$$_AccountOperationCopyWith<_$_AccountOperation> get copyWith =>
      throw _privateConstructorUsedError;
}
