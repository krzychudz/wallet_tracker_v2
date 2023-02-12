// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_account_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddAccountFormState {
  NonEmptyInput get accountName => throw _privateConstructorUsedError;
  MoneyInput get initialValue => throw _privateConstructorUsedError;
  NonEmptyInput get currencyCode => throw _privateConstructorUsedError;
  FormzStatus get formStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAccountFormStateCopyWith<AddAccountFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAccountFormStateCopyWith<$Res> {
  factory $AddAccountFormStateCopyWith(
          AddAccountFormState value, $Res Function(AddAccountFormState) then) =
      _$AddAccountFormStateCopyWithImpl<$Res, AddAccountFormState>;
  @useResult
  $Res call(
      {NonEmptyInput accountName,
      MoneyInput initialValue,
      NonEmptyInput currencyCode,
      FormzStatus formStatus});
}

/// @nodoc
class _$AddAccountFormStateCopyWithImpl<$Res, $Val extends AddAccountFormState>
    implements $AddAccountFormStateCopyWith<$Res> {
  _$AddAccountFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? initialValue = null,
    Object? currencyCode = null,
    Object? formStatus = null,
  }) {
    return _then(_value.copyWith(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as NonEmptyInput,
      initialValue: null == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as MoneyInput,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as NonEmptyInput,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddAccountFormStateCopyWith<$Res>
    implements $AddAccountFormStateCopyWith<$Res> {
  factory _$$_AddAccountFormStateCopyWith(_$_AddAccountFormState value,
          $Res Function(_$_AddAccountFormState) then) =
      __$$_AddAccountFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NonEmptyInput accountName,
      MoneyInput initialValue,
      NonEmptyInput currencyCode,
      FormzStatus formStatus});
}

/// @nodoc
class __$$_AddAccountFormStateCopyWithImpl<$Res>
    extends _$AddAccountFormStateCopyWithImpl<$Res, _$_AddAccountFormState>
    implements _$$_AddAccountFormStateCopyWith<$Res> {
  __$$_AddAccountFormStateCopyWithImpl(_$_AddAccountFormState _value,
      $Res Function(_$_AddAccountFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? initialValue = null,
    Object? currencyCode = null,
    Object? formStatus = null,
  }) {
    return _then(_$_AddAccountFormState(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as NonEmptyInput,
      initialValue: null == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as MoneyInput,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as NonEmptyInput,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_AddAccountFormState implements _AddAccountFormState {
  _$_AddAccountFormState(
      {this.accountName = const NonEmptyInput.pure(),
      this.initialValue = const MoneyInput.pure(),
      this.currencyCode = const NonEmptyInput.pure(),
      this.formStatus = FormzStatus.pure});

  @override
  @JsonKey()
  final NonEmptyInput accountName;
  @override
  @JsonKey()
  final MoneyInput initialValue;
  @override
  @JsonKey()
  final NonEmptyInput currencyCode;
  @override
  @JsonKey()
  final FormzStatus formStatus;

  @override
  String toString() {
    return 'AddAccountFormState(accountName: $accountName, initialValue: $initialValue, currencyCode: $currencyCode, formStatus: $formStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAccountFormState &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, accountName, initialValue, currencyCode, formStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAccountFormStateCopyWith<_$_AddAccountFormState> get copyWith =>
      __$$_AddAccountFormStateCopyWithImpl<_$_AddAccountFormState>(
          this, _$identity);
}

abstract class _AddAccountFormState implements AddAccountFormState {
  factory _AddAccountFormState(
      {final NonEmptyInput accountName,
      final MoneyInput initialValue,
      final NonEmptyInput currencyCode,
      final FormzStatus formStatus}) = _$_AddAccountFormState;

  @override
  NonEmptyInput get accountName;
  @override
  MoneyInput get initialValue;
  @override
  NonEmptyInput get currencyCode;
  @override
  FormzStatus get formStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AddAccountFormStateCopyWith<_$_AddAccountFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
