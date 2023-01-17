// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_account_operation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddAccountOperationState {
  List<Account>? get accounts => throw _privateConstructorUsedError;
  String? get selectedAccountId => throw _privateConstructorUsedError;
  MoneyInput get accountOperationValue => throw _privateConstructorUsedError;
  FormzStatus get formStatus => throw _privateConstructorUsedError;
  AccountOperationType get accountOperationType =>
      throw _privateConstructorUsedError;
  AccountOperationCreationStatus? get accountOperationCreationStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAccountOperationStateCopyWith<AddAccountOperationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAccountOperationStateCopyWith<$Res> {
  factory $AddAccountOperationStateCopyWith(AddAccountOperationState value,
          $Res Function(AddAccountOperationState) then) =
      _$AddAccountOperationStateCopyWithImpl<$Res, AddAccountOperationState>;
  @useResult
  $Res call(
      {List<Account>? accounts,
      String? selectedAccountId,
      MoneyInput accountOperationValue,
      FormzStatus formStatus,
      AccountOperationType accountOperationType,
      AccountOperationCreationStatus? accountOperationCreationStatus});
}

/// @nodoc
class _$AddAccountOperationStateCopyWithImpl<$Res,
        $Val extends AddAccountOperationState>
    implements $AddAccountOperationStateCopyWith<$Res> {
  _$AddAccountOperationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = freezed,
    Object? selectedAccountId = freezed,
    Object? accountOperationValue = null,
    Object? formStatus = null,
    Object? accountOperationType = null,
    Object? accountOperationCreationStatus = freezed,
  }) {
    return _then(_value.copyWith(
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      selectedAccountId: freezed == selectedAccountId
          ? _value.selectedAccountId
          : selectedAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountOperationValue: null == accountOperationValue
          ? _value.accountOperationValue
          : accountOperationValue // ignore: cast_nullable_to_non_nullable
              as MoneyInput,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      accountOperationType: null == accountOperationType
          ? _value.accountOperationType
          : accountOperationType // ignore: cast_nullable_to_non_nullable
              as AccountOperationType,
      accountOperationCreationStatus: freezed == accountOperationCreationStatus
          ? _value.accountOperationCreationStatus
          : accountOperationCreationStatus // ignore: cast_nullable_to_non_nullable
              as AccountOperationCreationStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddAccountOperationStateCopyWith<$Res>
    implements $AddAccountOperationStateCopyWith<$Res> {
  factory _$$_AddAccountOperationStateCopyWith(
          _$_AddAccountOperationState value,
          $Res Function(_$_AddAccountOperationState) then) =
      __$$_AddAccountOperationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Account>? accounts,
      String? selectedAccountId,
      MoneyInput accountOperationValue,
      FormzStatus formStatus,
      AccountOperationType accountOperationType,
      AccountOperationCreationStatus? accountOperationCreationStatus});
}

/// @nodoc
class __$$_AddAccountOperationStateCopyWithImpl<$Res>
    extends _$AddAccountOperationStateCopyWithImpl<$Res,
        _$_AddAccountOperationState>
    implements _$$_AddAccountOperationStateCopyWith<$Res> {
  __$$_AddAccountOperationStateCopyWithImpl(_$_AddAccountOperationState _value,
      $Res Function(_$_AddAccountOperationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = freezed,
    Object? selectedAccountId = freezed,
    Object? accountOperationValue = null,
    Object? formStatus = null,
    Object? accountOperationType = null,
    Object? accountOperationCreationStatus = freezed,
  }) {
    return _then(_$_AddAccountOperationState(
      accounts: freezed == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      selectedAccountId: freezed == selectedAccountId
          ? _value.selectedAccountId
          : selectedAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountOperationValue: null == accountOperationValue
          ? _value.accountOperationValue
          : accountOperationValue // ignore: cast_nullable_to_non_nullable
              as MoneyInput,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      accountOperationType: null == accountOperationType
          ? _value.accountOperationType
          : accountOperationType // ignore: cast_nullable_to_non_nullable
              as AccountOperationType,
      accountOperationCreationStatus: freezed == accountOperationCreationStatus
          ? _value.accountOperationCreationStatus
          : accountOperationCreationStatus // ignore: cast_nullable_to_non_nullable
              as AccountOperationCreationStatus?,
    ));
  }
}

/// @nodoc

class _$_AddAccountOperationState implements _AddAccountOperationState {
  _$_AddAccountOperationState(
      {final List<Account>? accounts,
      this.selectedAccountId,
      this.accountOperationValue = const MoneyInput.pure(),
      this.formStatus = FormzStatus.pure,
      this.accountOperationType = AccountOperationType.expense,
      this.accountOperationCreationStatus})
      : _accounts = accounts;

  final List<Account>? _accounts;
  @override
  List<Account>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? selectedAccountId;
  @override
  @JsonKey()
  final MoneyInput accountOperationValue;
  @override
  @JsonKey()
  final FormzStatus formStatus;
  @override
  @JsonKey()
  final AccountOperationType accountOperationType;
  @override
  final AccountOperationCreationStatus? accountOperationCreationStatus;

  @override
  String toString() {
    return 'AddAccountOperationState(accounts: $accounts, selectedAccountId: $selectedAccountId, accountOperationValue: $accountOperationValue, formStatus: $formStatus, accountOperationType: $accountOperationType, accountOperationCreationStatus: $accountOperationCreationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAccountOperationState &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.selectedAccountId, selectedAccountId) ||
                other.selectedAccountId == selectedAccountId) &&
            (identical(other.accountOperationValue, accountOperationValue) ||
                other.accountOperationValue == accountOperationValue) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus) &&
            (identical(other.accountOperationType, accountOperationType) ||
                other.accountOperationType == accountOperationType) &&
            (identical(other.accountOperationCreationStatus,
                    accountOperationCreationStatus) ||
                other.accountOperationCreationStatus ==
                    accountOperationCreationStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      selectedAccountId,
      accountOperationValue,
      formStatus,
      accountOperationType,
      accountOperationCreationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAccountOperationStateCopyWith<_$_AddAccountOperationState>
      get copyWith => __$$_AddAccountOperationStateCopyWithImpl<
          _$_AddAccountOperationState>(this, _$identity);
}

abstract class _AddAccountOperationState implements AddAccountOperationState {
  factory _AddAccountOperationState(
      {final List<Account>? accounts,
      final String? selectedAccountId,
      final MoneyInput accountOperationValue,
      final FormzStatus formStatus,
      final AccountOperationType accountOperationType,
      final AccountOperationCreationStatus?
          accountOperationCreationStatus}) = _$_AddAccountOperationState;

  @override
  List<Account>? get accounts;
  @override
  String? get selectedAccountId;
  @override
  MoneyInput get accountOperationValue;
  @override
  FormzStatus get formStatus;
  @override
  AccountOperationType get accountOperationType;
  @override
  AccountOperationCreationStatus? get accountOperationCreationStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AddAccountOperationStateCopyWith<_$_AddAccountOperationState>
      get copyWith => throw _privateConstructorUsedError;
}
