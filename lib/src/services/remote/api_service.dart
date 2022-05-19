import 'package:AlGhaf/src/services/remote/api_client.dart';
import 'package:dio/dio.dart';

class ApiService {
  ApiClient? _apiClient;

  ApiService() {
    var dio = Dio();
    _apiClient = ApiClient(dio);
  }
}
