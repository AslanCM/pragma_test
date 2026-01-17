abstract class KeyValuesStorageService {
  Future<void> setString(String key, String value);
  String? getString(String key);
  Future<void> remove(String key);
}