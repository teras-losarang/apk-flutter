import 'dart:convert';

import 'package:http/http.dart' as http;

class HHttpHelper {
  static const String _baseUrl = 'https://teras1.sentimentra.my.id/api/';

  static Future<Map<String, dynamic>> post(
      String endPoint, dynamic data) async {
    final response = await http.post(Uri.parse('$_baseUrl$endPoint'),
        headers: {}, body: json.encode(data));

    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to load data: ${response.statusCode}");
    }
  }
}
