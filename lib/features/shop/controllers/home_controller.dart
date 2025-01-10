import 'package:get/get.dart';
import 'package:myapp/data/models/category_model.dart';
import 'package:myapp/data/models/filter_model.dart';
import 'package:myapp/util/helpers/network_manager.dart';
import 'package:myapp/util/popups/loaders.dart';
import 'package:myapp/util/providers/category_provider.dart';
import 'package:myapp/util/services/storage_service.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  RxList<CategoryModel> categoryMenus = <CategoryModel>[].obs;
  RxList<CategoryModel> categoryBanners = <CategoryModel>[].obs;

  final categoryProvider = Get.put(CategoryProvider());
  final carouselCurrentIndex = 0.obs;
  final localStorage = StorageService.instance;

  @override
  void onReady() {
    getCategoryMenus();
    getCategoryBanners();
  }

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }

  Future<void> getCategoryMenus() async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      final response = await categoryProvider.lists(
        filter: FilterModel(categoryType: 2),
      );

      if (response.body["code"] == categoryProvider.apiService.code_success) {
        categoryMenus.assignAll((response.body['data'] as List)
            .map((item) => CategoryModel.fromJson(item))
            .toList());
      } else {
        HLoaders.errorSnackBar(
            title: "Oh Snap!", message: response.body["messages"]);
      }
    } catch (e) {
      HLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  Future<void> getCategoryBanners() async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      final response = await categoryProvider.lists(
        filter: FilterModel(categoryType: 3),
      );

      if (response.body["code"] == categoryProvider.apiService.code_success) {
        categoryBanners.assignAll((response.body['data'] as List)
            .map((item) => CategoryModel.fromJson(item))
            .toList());
      } else {
        HLoaders.errorSnackBar(
            title: "Oh Snap!", message: response.body["messages"]);
      }
    } catch (e) {
      HLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}
