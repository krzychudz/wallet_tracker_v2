// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountDetailsState {
  Account? get account => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountDetailsStateCopyWith<AccountDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailsStateCopyWith<$Res> {
  factory $AccountDetailsStateCopyWith(
          AccountDetailsState value, $Res Function(AccountDetailsState) then) =
      _$AccountDetailsStateCopyWithImpl<$Res, AccountDetailsState>;
  @useResult
  $Res call({Account? account});

  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class _$AccountDetailsStateCopyWithImpl<$Res, $Val extends AccountDetailsState>
    implements $AccountDetailsStateCopyWith<$Res> {
  _$AccountDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountDetailsStateCopyWith<$Res>
    implements $AccountDetailsStateCopyWith<$Res> {
  factory _$$_AccountDetailsStateCopyWith(_$_AccountDetailsState value,
          $Res Function(_$_AccountDetailsState) then) =
      __$$_AccountDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Account? account});

  @override
  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class __$$_AccountDetailsStateCopyWithImpl<$Res>
    extends _$AccountDetailsStateCopyWithImpl<$Res, _$_AccountDetailsState>
    implements _$$_AccountDetailsStateCopyWith<$Res> {
  __$$_AccountDetailsStateCopyWithImpl(_$_AccountDetailsState _value,
      $Res Function(_$_AccountDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = freezed,
  }) {
    return _then(_$_AccountDetailsState(
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
    ));
  }
}

/// @nodoc

class _$_AccountDetailsState implements _AccountDetailsState {
  _$_AccountDetailsState({this.account});

  @override
  final Account? account;

  @override
  String toString() {
    return 'AccountDetailsState(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountDetailsState &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountDetailsStateCopyWith<_$_AccountDetailsState> get copyWith =>
      __$$_AccountDetailsStateCopyWithImpl<_$_AccountDetailsState>(
          this, _$identity);
}

abstract class _AccountDetailsState implements AccountDetailsState {
  factory _AccountDetailsState({final Account? account}) =
      _$_AccountDetailsState;

  @override
  Account? get account;
  @override
  @JsonKey(ignore: true)
  _$$_AccountDetailsStateCopyWith<_$_AccountDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
