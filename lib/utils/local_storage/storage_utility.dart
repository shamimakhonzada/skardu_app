import 'package:get_storage/get_storage.dart';

class SkdLocalStorage {
  static final SkdLocalStorage _instance = SkdLocalStorage._internal();

  factory SkdLocalStorage() {
    return _instance;
  }

  SkdLocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveData<Skd>(String key, Skd value) async {
    await _storage.write(key, value);
  }

  Skd? readData<Skd>(String key) {
    return _storage.read<Skd>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
