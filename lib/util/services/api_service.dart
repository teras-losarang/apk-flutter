// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:get/get.dart';
import 'package:myapp/util/services/env_service.dart';

class ApiService extends GetxService {
  String? baseUrl = EnvService.instance.apiUrl;
  String? token = "";

  String code_success = "000";
  String error_success = "111";

  String path_auth = "auth/";
  String path_auth_me = "me";
  String path_auth_login = "login";
  String path_auth_register = "register";

  String generateSignature({
    required String path,
  }) {
    final String params = base64.encode(utf8.encode(Uri(queryParameters: {
      "method": "POST",
      "path": path,
      "timestamp": (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString(),
    }).query));

    final String signature =
        Hmac(sha256, utf8.encode("${EnvService.instance.secretApi}"))
            .convert(utf8.encode(params))
            .toString();

    return signature;
  }
}
