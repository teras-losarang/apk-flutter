import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/data/models/user_model.dart';
import 'package:myapp/features/shop/screens/home/home.dart';
import 'package:myapp/navigation_menu.dart';
import 'package:myapp/util/helpers/network_manager.dart';
import 'package:myapp/util/popups/loaders.dart';
import 'package:myapp/util/providers/auth_provider.dart';
import 'package:myapp/util/services/env_service.dart';
import 'package:myapp/util/services/storage_service.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final authProvide = Get.put(AuthProvider());
  final localStorage = StorageService.instance;

  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();

  Rx<UserModel> user = UserModel().obs;

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    // email.text = localStorage.getRememberMeEmail;
    // password.text = localStorage.getRememberMePassword;
    // rememberMe.value = localStorage.getRememberMe;
    super.onInit();
  }

  Future<void> login() async {
    try {
      // HFullScreenLoader.openLoadingDialog(
      //     "We are processing your information", HImageStrings.cloth);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      if (!loginFormKey.currentState!.validate()) {
        return;
      }

      user.value.email = email.text;
      user.value.password = password.text;
      final response = await authProvide.login(user: user.value);

      if (response.body["code"] == authProvide.apiService.code_success) {
        if (rememberMe.value) {
          localStorage.setStorage(localStorage.rememberMe, rememberMe.value);
          localStorage.setStorage(localStorage.rememberMeEmail, email.text);
          localStorage.setStorage(
              localStorage.rememberMePassword, password.text);
        } else {
          localStorage.setStorage(localStorage.rememberMe, rememberMe.value);
          localStorage.setStorage(localStorage.rememberMeEmail, '');
          localStorage.setStorage(localStorage.rememberMePassword, '');
        }

        localStorage.setStorage(
            localStorage.token, response.body["data"]["secret"]);
        localStorage.setStorage(
            localStorage.mapKey, response.body["data"]["map_key"]);
        localStorage.setStorage(
            localStorage.apiKey, response.body["data"]["api_key"]);
        localStorage.setStorage(localStorage.user, response.body["data"]);
        localStorage.setStorage(localStorage.isLoggedIn, true);

        HLoaders.successSnackBar(
            title: "Congratulations", message: response.body["messages"]);

        Get.to(() => const NavigationMenu());
      } else {
        HLoaders.errorSnackBar(
            title: "Oh Snap!", message: response.body["messages"]);
      }
    } catch (e) {
      HLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    } finally {
      // HFullScreenLoader.stopLoading();
    }
  }
}
