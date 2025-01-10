import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/data/models/user_model.dart';
import 'package:myapp/features/authentication/screens/login/login.dart';
import 'package:myapp/util/helpers/network_manager.dart';
import 'package:myapp/util/popups/loaders.dart';
import 'package:myapp/util/providers/auth_provider.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();
  final authProvide = Get.put(AuthProvider());

  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();

  Rx<UserModel> user = UserModel().obs;

  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  Future<void> register() async {
    try {
      // HFullScreenLoader.openLoadingDialog(
      //     "We are processing your information", HImageStrings.cloth);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      if (!registerFormKey.currentState!.validate()) {
        return;
      }

      if (!privacyPolicy.value) {
        HLoaders.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order to create account, you must have to read and accept the Privacy Policy & Terms of Use");
        return;
      }

      user.value.name = "${firstName.text.trim()} ${lastName.text.trim()}";
      user.value.email = email.text;
      user.value.phone = phone.text;
      user.value.password = password.text;
      final response = await authProvide.register(user: user.value);

      if (response.body["code"] == authProvide.apiService.code_success) {
        HLoaders.successSnackBar(
            title: "Congratulations", message: response.body["messages"]);

        Get.to(() => const LoginScreen());
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
