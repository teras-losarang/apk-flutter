import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';
import 'package:myapp/util/helpers/network_manager.dart';
import 'package:myapp/util/popups/loaders.dart';
import 'package:myapp/util/providers/auth_provider.dart';
import 'package:myapp/util/services/header_service.dart';
import 'package:myapp/util/services/storage_service.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();
  final authProvide = Get.put(AuthProvider());

  final localStorage = StorageService.instance;

  @override
  void onReady() {
    getMe();
  }

  Future<void> getMe() async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      final response = await authProvide.me();
      if (response.body["code"] == authProvide.apiService.code_success) {
        localStorage.setStorage(localStorage.user, response.body['data']);
      } else {
        HLoaders.errorSnackBar(
            title: "Oh Snap!", message: response.body["messages"]);
      }
    } catch (e) {
      HLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}
