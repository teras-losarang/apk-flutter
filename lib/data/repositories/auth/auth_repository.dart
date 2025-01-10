import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/features/authentication/screens/login/login.dart';
import 'package:myapp/features/authentication/screens/onboarding/onboarding.dart';
import 'package:myapp/navigation_menu.dart';
import 'package:myapp/util/services/storage_service.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final localStorage = StorageService.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    // if (kDebugMode) {
    //   print("== GET STORAGE ==");
    //   print(deviceStorage.read("isFirstTime"));
    // }

    deviceStorage.writeIfNull(localStorage.isFirstTime, true);
    deviceStorage.writeIfNull(localStorage.isLoggedIn, false);

    if (deviceStorage.read(localStorage.isFirstTime) != true) {
      if (deviceStorage.read(localStorage.isLoggedIn)) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => const LoginScreen());
      }
    } else {
      Get.offAll(const OnboardingScreen());
    }
  }
}
