// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddAccountState _$AddAccountStateFromJson(Map<String, dynamic> json) {
  return _AddAccountState.fromJson(json);
}

/// @nodoc
mixin _$AddAccountState {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAccountStateCopyWith<$Res> {
  factory $AddAccountStateCopyWith(
          AddAccountState value, $Res Function(AddAccountState) then) =
      _$AddAccountStateCopyWithImpl<$Res, AddAccountState>;
}

/// @nodoc
class _$AddAccountStateCopyWithImpl<$Res, $Val extends AddAccountState>
    implements $AddAccountStateCopyWith<$Res> {
  _$AddAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddAccountStateCopyWith<$Res> {
  factory _$$_AddAccountStateCopyWith(
          _$_AddAccountState value, $Res Function(_$_AddAccountState) then) =
      __$$_AddAccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddAccountStateCopyWithImpl<$Res>
    extends _$AddAccountStateCopyWithImpl<$Res, _$_AddAccountState>
    implements _$$_AddAccountStateCopyWith<$Res> {
  __$$_AddAccountStateCopyWithImpl(
      _$_AddAccountState _value, $Res Function(_$_AddAccountState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_AddAccountState implements _AddAccountState {
  _$_AddAccountState();

  factory _$_AddAccountState.fromJson(Map<String, dynamic> json) =>
      _$$_AddAccountStateFromJson(json);

  @override
  String toString() {
    return 'AddAccountState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddAccountState);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddAccountStateToJson(
      this,
    );
  }
}

abstract class _AddAccountState implements AddAccountState {
  factory _AddAccountState() = _$_AddAccountState;

  factory _AddAccountState.fromJson(Map<String, dynamic> json) =
      _$_AddAccountState.fromJson;
}
