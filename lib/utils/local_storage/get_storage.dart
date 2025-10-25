import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();
  TLocalStorage._internal();
  factory TLocalStorage() => _instance;
  final GetStorage _storage = GetStorage();

  //Generic method to save data
  Future<void> saveData(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  //Generic method to get data
  dynamic getData(String key) {
    return _storage.read(key);
  }

  //Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //Generic method to read all data
  Map<String, dynamic> readAllData() {
    return _storage.read(
          _storage.getKeys().toList().asMap().map(
            (index, key) => MapEntry(key, _storage.read(key)),
          ),
        )
        as Map<String, dynamic>;
  }

  //Generic method to clear all data
  Future<void> clearAllData() async {
    await _storage.erase();
  }

  //Generic method to remove data
  Future<void> removeDataByKey(String key) async {
    await _storage.remove(key);
  }
}
