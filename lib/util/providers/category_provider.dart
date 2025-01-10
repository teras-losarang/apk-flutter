import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:myapp/data/models/filter_model.dart';
import 'package:myapp/util/services/api_service.dart';
import 'package:myapp/util/services/header_service.dart';

class CategoryProvider extends GetConnect {
  final ApiService apiService = Get.put(ApiService());

  @override
  void onInit() {
    httpClient.baseUrl = apiService.baseUrl!;
    httpClient.addRequestModifier((Request request) async {
      return HeaderService().modifyRequest(request);
    });
  }

  Future<Response> lists({required FilterModel? filter}) async {
    return await post(apiService.path_category, {
      "type": filter!.categoryType,
    }, decoder: (body) {
      return body;
    }, headers: {
      'X-Signature':
          apiService.generateSignature(path: apiService.path_category)
    });
  }
}
