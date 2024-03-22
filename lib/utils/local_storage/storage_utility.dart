import 'package:get_storage/get_storage.dart';

class SsappLocalStorage {
  static final SsappLocalStorage _instance = SsappLocalStorage._internal();

  factory SsappLocalStorage() {
    return _instance;
  }

  SsappLocalStorage._internal();
  final _storage = GetStorage();

  // To save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
