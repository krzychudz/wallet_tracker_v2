// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddAccountState {
  String get accountName => throw _privateConstructorUsedError;
  int get initialValue => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;
  AccountCreationState get accountCreationState =>
      throw _privateConstructorUsedError;
  Account? get accountData => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAccountStateCopyWith<AddAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAccountStateCopyWith<$Res> {
  factory $AddAccountStateCopyWith(
          AddAccountState value, $Res Function(AddAccountState) then) =
      _$AddAccountStateCopyWithImpl<$Res, AddAccountState>;
  @useResult
  $Res call(
      {String accountName,
      int initialValue,
      String? currencyCode,
      AccountCreationState accountCreationState,
      Account? accountData,
      Failure? failure});

  $AccountCopyWith<$Res>? get accountData;
}

/// @nodoc
class _$AddAccountStateCopyWithImpl<$Res, $Val extends AddAccountState>
    implements $AddAccountStateCopyWith<$Res> {
  _$AddAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? initialValue = null,
    Object? currencyCode = freezed,
    Object? accountCreationState = null,
    Object? accountData = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: null == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCreationState: null == accountCreationState
          ? _value.accountCreationState
          : accountCreationState // ignore: cast_nullable_to_non_nullable
              as AccountCreationState,
      accountData: freezed == accountData
          ? _value.accountData
          : accountData // ignore: cast_nullable_to_non_nullable
              as Account?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get accountData {
    if (_value.accountData == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.accountData!, (value) {
      return _then(_value.copyWith(accountData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddAccountStateCopyWith<$Res>
    implements $AddAccountStateCopyWith<$Res> {
  factory _$$_AddAccountStateCopyWith(
          _$_AddAccountState value, $Res Function(_$_AddAccountState) then) =
      __$$_AddAccountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accountName,
      int initialValue,
      String? currencyCode,
      AccountCreationState accountCreationState,
      Account? accountData,
      Failure? failure});

  @override
  $AccountCopyWith<$Res>? get accountData;
}

/// @nodoc
class __$$_AddAccountStateCopyWithImpl<$Res>
    extends _$AddAccountStateCopyWithImpl<$Res, _$_AddAccountState>
    implements _$$_AddAccountStateCopyWith<$Res> {
  __$$_AddAccountStateCopyWithImpl(
      _$_AddAccountState _value, $Res Function(_$_AddAccountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? initialValue = null,
    Object? currencyCode = freezed,
    Object? accountCreationState = null,
    Object? accountData = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_AddAccountState(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: null == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCreationState: null == accountCreationState
          ? _value.accountCreationState
          : accountCreationState // ignore: cast_nullable_to_non_nullable
              as AccountCreationState,
      accountData: freezed == accountData
          ? _value.accountData
          : accountData // ignore: cast_nullable_to_non_nullable
              as Account?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_AddAccountState implements _AddAccountState {
  _$_AddAccountState(
      {this.accountName = "",
      this.initialValue = 0,
      this.currencyCode,
      this.accountCreationState = AccountCreationState.idle,
      this.accountData,
      this.failure});

  @override
  @JsonKey()
  final String accountName;
  @override
  @JsonKey()
  final int initialValue;
  @override
  final String? currencyCode;
  @override
  @JsonKey()
  final AccountCreationState accountCreationState;
  @override
  final Account? accountData;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AddAccountState(accountName: $accountName, initialValue: $initialValue, currencyCode: $currencyCode, accountCreationState: $accountCreationState, accountData: $accountData, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAccountState &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.accountCreationState, accountCreationState) ||
                other.accountCreationState == accountCreationState) &&
            (identical(other.accountData, accountData) ||
                other.accountData == accountData) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountName, initialValue,
      currencyCode, accountCreationState, accountData, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAccountStateCopyWith<_$_AddAccountState> get copyWith =>
      __$$_AddAccountStateCopyWithImpl<_$_AddAccountState>(this, _$identity);
}

abstract class _AddAccountState implements AddAccountState {
  factory _AddAccountState(
      {final String accountName,
      final int initialValue,
      final String? currencyCode,
      final AccountCreationState accountCreationState,
      final Account? accountData,
      final Failure? failure}) = _$_AddAccountState;

  @override
  String get accountName;
  @override
  int get initialValue;
  @override
  String? get currencyCode;
  @override
  AccountCreationState get accountCreationState;
  @override
  Account? get accountData;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_AddAccountStateCopyWith<_$_AddAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
