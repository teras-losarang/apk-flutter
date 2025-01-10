import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/util/services/api_service.dart';
import 'package:myapp/util/services/storage_service.dart';

class HeaderService {
  final localStorage = GetStorage();

  FutureOr<Request<T>> modifyRequest<T>(Request<T> request) {
    request.headers['X-Auth'] =
        '${localStorage.read(StorageService.instance.token)}';
    request.headers['X-Timestamp'] =
        (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
    return request;
  }
}
