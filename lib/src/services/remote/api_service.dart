import 'package:AlGhaf/.env.dart';
import 'package:AlGhaf/src/models/user_models/directions_model.dart';
import 'package:AlGhaf/src/services/local/flavor_service.dart';
import 'package:AlGhaf/src/services/remote/api_client.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ApiService {
  ApiClient? _apiGoogleMapClient;

  ApiService() {
    var dio = Dio();
    _apiGoogleMapClient =
        ApiClient(dio, baseUrl: FlavorService.getGoogleMapBaseApi);
  }

  Future<Directions?> getDirections({
    required LatLng origin,
    required LatLng destination,
  }) async {
    final response = await _apiGoogleMapClient?.getReq(
      "api/directions/json",
      queryParameters: {
        'origin': '${origin.latitude},${origin.longitude}',
        'destination': '${destination.latitude},${destination.longitude}',
        'key': googleApiKey,
      },
    );

    // Check if response is successful
    if (response?.statusCode == 200) {
      return Directions.fromMap(response!.data);
    }
    return null;
  }

  Future<Directions?> getPlaceId(String input) async {
    final response = await _apiGoogleMapClient?.getReq(
      "api/place/findplacefromtext/json",
      queryParameters: {
        'input': input,
        'inputtype': 'textquery',
        'key': googleApiKey,
      },
    );

    // Check if response is successful
    if (response?.statusCode == 200) {
      return Directions.fromMap(response!.data);
    }
    return null;
  }
}
