import 'package:get_storage/get_storage.dart';

class StorageService {
  StorageService._();
  static final StorageService instance = StorageService._();
  final localStorage = GetStorage();

  final String isFirstTime = "isFirstTime";
  final String isLoggedIn = "isLoggedIn";
  final String token = "token";
  final String user = "user";
  final String mapKey = "mapKey";
  final String apiKey = "apiKey";
  final String rememberMe = "rememberMe";
  final String rememberMeEmail = "rememberMeEmail";
  final String rememberMePassword = "rememberMePassword";

  get getUser => localStorage.read(user);
  get getToken => localStorage.read(token);
  get getIsFirstTime => localStorage.read(isFirstTime);
  get getIsLoggedIn => localStorage.read(isLoggedIn);
  get getRememberMe => localStorage.read(rememberMe);
  get getRememberMeEmail => localStorage.read(rememberMeEmail);
  get getRememberMePassword => localStorage.read(rememberMePassword);

  void setStorage(String name, dynamic value) {
    localStorage.write(name, value);
  }

  void removeStorage(String name) {
    localStorage.remove(name);
  }

  void clearStorageAuth() {
    removeStorage(user);
    removeStorage(token);
    removeStorage(isLoggedIn);
  }

  void clearStorage() {
    localStorage.erase();
  }
}
