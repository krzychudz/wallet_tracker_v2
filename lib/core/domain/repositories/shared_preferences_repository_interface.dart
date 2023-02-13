abstract class SharedPreferencesRepositoryInterface {
  Future<bool> getBool(String key, {bool defValue = false});
  Future<bool> setBool(String key, bool value);
}
