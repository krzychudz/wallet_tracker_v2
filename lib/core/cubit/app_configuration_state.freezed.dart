// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_configuration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppConfigurationState {
  dynamic get isDarkModeEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigurationStateCopyWith<AppConfigurationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigurationStateCopyWith<$Res> {
  factory $AppConfigurationStateCopyWith(AppConfigurationState value,
          $Res Function(AppConfigurationState) then) =
      _$AppConfigurationStateCopyWithImpl<$Res, AppConfigurationState>;
  @useResult
  $Res call({dynamic isDarkModeEnabled});
}

/// @nodoc
class _$AppConfigurationStateCopyWithImpl<$Res,
        $Val extends AppConfigurationState>
    implements $AppConfigurationStateCopyWith<$Res> {
  _$AppConfigurationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkModeEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      isDarkModeEnabled: freezed == isDarkModeEnabled
          ? _value.isDarkModeEnabled
          : isDarkModeEnabled // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppConfigurationStateCopyWith<$Res>
    implements $AppConfigurationStateCopyWith<$Res> {
  factory _$$_AppConfigurationStateCopyWith(_$_AppConfigurationState value,
          $Res Function(_$_AppConfigurationState) then) =
      __$$_AppConfigurationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic isDarkModeEnabled});
}

/// @nodoc
class __$$_AppConfigurationStateCopyWithImpl<$Res>
    extends _$AppConfigurationStateCopyWithImpl<$Res, _$_AppConfigurationState>
    implements _$$_AppConfigurationStateCopyWith<$Res> {
  __$$_AppConfigurationStateCopyWithImpl(_$_AppConfigurationState _value,
      $Res Function(_$_AppConfigurationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkModeEnabled = freezed,
  }) {
    return _then(_$_AppConfigurationState(
      isDarkModeEnabled: freezed == isDarkModeEnabled
          ? _value.isDarkModeEnabled!
          : isDarkModeEnabled,
    ));
  }
}

/// @nodoc

class _$_AppConfigurationState implements _AppConfigurationState {
  _$_AppConfigurationState({this.isDarkModeEnabled = false});

  @override
  @JsonKey()
  final dynamic isDarkModeEnabled;

  @override
  String toString() {
    return 'AppConfigurationState(isDarkModeEnabled: $isDarkModeEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppConfigurationState &&
            const DeepCollectionEquality()
                .equals(other.isDarkModeEnabled, isDarkModeEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isDarkModeEnabled));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppConfigurationStateCopyWith<_$_AppConfigurationState> get copyWith =>
      __$$_AppConfigurationStateCopyWithImpl<_$_AppConfigurationState>(
          this, _$identity);
}

abstract class _AppConfigurationState implements AppConfigurationState {
  factory _AppConfigurationState({final dynamic isDarkModeEnabled}) =
      _$_AppConfigurationState;

  @override
  dynamic get isDarkModeEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_AppConfigurationStateCopyWith<_$_AppConfigurationState> get copyWith =>
      throw _privateConstructorUsedError;
}
