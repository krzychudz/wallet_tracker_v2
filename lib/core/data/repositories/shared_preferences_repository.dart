import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/shared_preferences_repository_interface.dart';
import 'package:wallet_tracker_v2/core/utils/values.dart';

class SharedPreferencesRepository
    implements SharedPreferencesRepositoryInterface {
  @override
  Future<bool> getBool(String key, {bool defValue = false}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(Values.isDarkModeEnabledKey) ?? defValue;
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setBool(Values.isDarkModeEnabledKey, value);
  }
}
