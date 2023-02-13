import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/cubit/app_configuration_state.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/shared_preferences_repository_interface.dart';
import 'package:wallet_tracker_v2/core/utils/values.dart';

class AppConfigurationCubit extends Cubit<AppConfigurationState> {
  AppConfigurationCubit(this._sharedPreferencesRepository)
      : super(AppConfigurationState());

  final SharedPreferencesRepositoryInterface _sharedPreferencesRepository;

  void init() async {
    final isDarkModeEnable =
        await _sharedPreferencesRepository.getBool(Values.isDarkModeEnabledKey);
    emit(state.copyWith(isDarkModeEnabled: isDarkModeEnable));
  }

  void toggleDarkMode(bool isDarkModeEnable) async {
    await _sharedPreferencesRepository.setBool(
        Values.isDarkModeEnabledKey, isDarkModeEnable);

    emit(state.copyWith(isDarkModeEnabled: isDarkModeEnable));
  }
}
