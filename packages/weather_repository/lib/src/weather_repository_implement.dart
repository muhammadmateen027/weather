import 'package:network/network.dart';
import 'package:weather_repository/weather_repository.dart';

class WeatherRepository implements IWeatherRepository {
  const WeatherRepository({required this.client});

  final NetworkClient client;

  @override
  Future<ApiResponse> getLocationResultByID({
    required String locationId,
  }) async {
    final result = await client.get(
      '/api/location/$locationId/',
    );

    return getApiResponse(result);
  }

  @override
  Future<ApiResponse> getLocationResultByIdAndDate({
    required String locationId,
    required int year,
    required int month,
    required int date,
  }) async {
    var result = await client.get(
      '/api/location/$locationId/$year/$month/$date/',
    );

    return getApiResponse(result);
  }

  @override
  Future<ApiResponse> searchLocation({
    required String query,
    bool byLatLng = false,
  }) async {
    final queryParameters = <String, String>{};

    if (byLatLng) {
      queryParameters['lattlong'] = query;
    } else {
      queryParameters['query'] = query;
    }

    final result = await client.get(
      'api/location/search/',
      queryParameters: queryParameters,
    );

    return getApiResponse(result);
  }
}
