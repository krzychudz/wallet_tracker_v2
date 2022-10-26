// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountParams {
  String get name => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountParamsCopyWith<AccountParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountParamsCopyWith<$Res> {
  factory $AccountParamsCopyWith(
          AccountParams value, $Res Function(AccountParams) then) =
      _$AccountParamsCopyWithImpl<$Res, AccountParams>;
  @useResult
  $Res call({String name, String currency, int balance});
}

/// @nodoc
class _$AccountParamsCopyWithImpl<$Res, $Val extends AccountParams>
    implements $AccountParamsCopyWith<$Res> {
  _$AccountParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? currency = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountParamsCopyWith<$Res>
    implements $AccountParamsCopyWith<$Res> {
  factory _$$_AccountParamsCopyWith(
          _$_AccountParams value, $Res Function(_$_AccountParams) then) =
      __$$_AccountParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String currency, int balance});
}

/// @nodoc
class __$$_AccountParamsCopyWithImpl<$Res>
    extends _$AccountParamsCopyWithImpl<$Res, _$_AccountParams>
    implements _$$_AccountParamsCopyWith<$Res> {
  __$$_AccountParamsCopyWithImpl(
      _$_AccountParams _value, $Res Function(_$_AccountParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? currency = null,
    Object? balance = null,
  }) {
    return _then(_$_AccountParams(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AccountParams implements _AccountParams {
  _$_AccountParams(
      {required this.name, required this.currency, required this.balance});

  @override
  final String name;
  @override
  final String currency;
  @override
  final int balance;

  @override
  String toString() {
    return 'AccountParams(name: $name, currency: $currency, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, currency, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountParamsCopyWith<_$_AccountParams> get copyWith =>
      __$$_AccountParamsCopyWithImpl<_$_AccountParams>(this, _$identity);
}

abstract class _AccountParams implements AccountParams {
  factory _AccountParams(
      {required final String name,
      required final String currency,
      required final int balance}) = _$_AccountParams;

  @override
  String get name;
  @override
  String get currency;
  @override
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$$_AccountParamsCopyWith<_$_AccountParams> get copyWith =>
      throw _privateConstructorUsedError;
}
