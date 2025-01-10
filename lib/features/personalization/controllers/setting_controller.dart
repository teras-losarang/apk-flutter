import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/util/services/storage_service.dart';

class SettingController extends GetxController {
  static SettingController get instance => Get.find();

  final storageService = StorageService;
}
