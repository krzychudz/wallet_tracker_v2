import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_configuration_state.freezed.dart';

@freezed
class AppConfigurationState with _$AppConfigurationState {
  factory AppConfigurationState({
    @Default(false) isDarkModeEnabled,
  }) = _AppConfigurationState;
}
