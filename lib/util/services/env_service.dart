import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvService {
  EnvService._();
  static final EnvService instance = EnvService._();

  final String? apiUrl = dotenv.env['API_URL'];
  final String? mapsKey = dotenv.env['MAPS_KEY'];
  final String? secretApi = dotenv.env['SECRET_API'];
}
