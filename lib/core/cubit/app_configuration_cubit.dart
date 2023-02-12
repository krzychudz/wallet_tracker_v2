import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/cubit/app_configuration_state.dart';

class AppConfigurationCubit extends Cubit<AppConfigurationState> {
  AppConfigurationCubit() : super(AppConfigurationState());

  void toggleDarkMode(bool isDarkModeEnable) {
    emit(state.copyWith(isDarkModeEnabled: isDarkModeEnable));
  }
}
