// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_operations_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountOperationParams {
  int get value => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  AccountOperationType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountOperationParamsCopyWith<AccountOperationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountOperationParamsCopyWith<$Res> {
  factory $AccountOperationParamsCopyWith(AccountOperationParams value,
          $Res Function(AccountOperationParams) then) =
      _$AccountOperationParamsCopyWithImpl<$Res, AccountOperationParams>;
  @useResult
  $Res call({int value, String accountId, AccountOperationType type});
}

/// @nodoc
class _$AccountOperationParamsCopyWithImpl<$Res,
        $Val extends AccountOperationParams>
    implements $AccountOperationParamsCopyWith<$Res> {
  _$AccountOperationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? accountId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountOperationType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountOperationParamsCopyWith<$Res>
    implements $AccountOperationParamsCopyWith<$Res> {
  factory _$$_AccountOperationParamsCopyWith(_$_AccountOperationParams value,
          $Res Function(_$_AccountOperationParams) then) =
      __$$_AccountOperationParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, String accountId, AccountOperationType type});
}

/// @nodoc
class __$$_AccountOperationParamsCopyWithImpl<$Res>
    extends _$AccountOperationParamsCopyWithImpl<$Res,
        _$_AccountOperationParams>
    implements _$$_AccountOperationParamsCopyWith<$Res> {
  __$$_AccountOperationParamsCopyWithImpl(_$_AccountOperationParams _value,
      $Res Function(_$_AccountOperationParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? accountId = null,
    Object? type = null,
  }) {
    return _then(_$_AccountOperationParams(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountOperationType,
    ));
  }
}

/// @nodoc

class _$_AccountOperationParams implements _AccountOperationParams {
  _$_AccountOperationParams(
      {required this.value, required this.accountId, required this.type});

  @override
  final int value;
  @override
  final String accountId;
  @override
  final AccountOperationType type;

  @override
  String toString() {
    return 'AccountOperationParams(value: $value, accountId: $accountId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountOperationParams &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, accountId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountOperationParamsCopyWith<_$_AccountOperationParams> get copyWith =>
      __$$_AccountOperationParamsCopyWithImpl<_$_AccountOperationParams>(
          this, _$identity);
}

abstract class _AccountOperationParams implements AccountOperationParams {
  factory _AccountOperationParams(
      {required final int value,
      required final String accountId,
      required final AccountOperationType type}) = _$_AccountOperationParams;

  @override
  int get value;
  @override
  String get accountId;
  @override
  AccountOperationType get type;
  @override
  @JsonKey(ignore: true)
  _$$_AccountOperationParamsCopyWith<_$_AccountOperationParams> get copyWith =>
      throw _privateConstructorUsedError;
}
