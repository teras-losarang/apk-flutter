import 'package:get/get.dart';
import 'package:myapp/util/services/api_service.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:myapp/util/services/header_service.dart';

class ApiProvider extends GetConnect {
  final ApiService apiService = Get.put(ApiService());

  @override
  void onInit() {
    httpClient.baseUrl = apiService.baseUrl! + apiService.path_auth;
    httpClient.addRequestModifier((Request request) async {
      return HeaderService().modifyRequest(request);
    });
  }

  Future<Response> postData(
      {required String path, required Map<String, dynamic> body}) async {
    return await post(apiService.path_auth_me, {}, decoder: (body) {
      return body;
    }, headers: {
      'X-Signature': apiService.generateSignature(
          path: '${apiService.path_auth}${apiService.path_auth_me}')
    });
  }
}
