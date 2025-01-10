import 'package:get/get.dart';
import 'package:get/get_connect/http/src/interceptors/get_modifiers.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:myapp/data/models/user_model.dart';
import 'package:myapp/util/services/api_service.dart';
import 'package:myapp/util/services/header_service.dart';

class AuthProvider extends GetConnect {
  final ApiService apiService = Get.put(ApiService());

  @override
  void onInit() {
    httpClient.baseUrl = apiService.baseUrl! + apiService.path_auth;
    httpClient.addRequestModifier((Request request) async {
      return HeaderService().modifyRequest(request);
    });
  }

  Future<Response> login({required UserModel? user}) async {
    return await post(apiService.path_auth_login, {
      "email": user?.email,
      "password": user?.password,
    }, decoder: (body) {
      return body;
    });
  }

  Future<Response> register({required UserModel? user}) async {
    return await post(apiService.path_auth_register, {
      "name": user?.name,
      "email": user?.email,
      "phone": user?.phone,
      "password": user?.password,
      "confirm_password": user?.password,
    }, decoder: (body) {
      return body;
    });
  }

  Future<Response> me() async {
    return await post(apiService.path_auth_me, {}, decoder: (body) {
      return body;
    }, headers: {
      'X-Signature': apiService.generateSignature(
          path: '${apiService.path_auth}${apiService.path_auth_me}')
    });
  }
}
