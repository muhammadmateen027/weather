import 'package:weather_repository/weather_repository.dart';

abstract class IWeatherRepository {

  Future<ApiResponse> searchLocation({
    required String query,
    bool byLatLng = false,
  });

  Future<ApiResponse> getLocationResultByID({required String locationId});

  Future<ApiResponse> getLocationResultByIdAndDate({
    required String locationId,
    required int year,
    required int month,
    required int date,
  });
}
