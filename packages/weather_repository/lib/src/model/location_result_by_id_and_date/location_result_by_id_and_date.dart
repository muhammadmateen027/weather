import 'package:flutter/foundation.dart';

class LocationResultByIdAndDateModel {
  LocationResultByIdAndDateModel({
    this.locationResult = const [],
  });
  List<LocationResultByIdAndDate> locationResult;

  factory LocationResultByIdAndDateModel.fromJson(List<dynamic> parsedJson) {
    List<LocationResultByIdAndDate> result =
        parsedJson.map((i) => LocationResultByIdAndDate.fromJson(i)).toList();

    return LocationResultByIdAndDateModel(
      locationResult: result,
    );
  }
}

@immutable
class LocationResultByIdAndDate {
  final int? id;
  final String? weatherStateName;
  final String? weatherStateAbbr;
  final String? windDirectionCompass;
  final String? created;
  final String? applicableDate;
  final double? minTemp;
  final double? maxTemp;
  final double? theTemp;
  final double? windSpeed;
  final double? windDirection;
  final int? airPressure;
  final int? humidity;
  final double? visibility;
  final int? predictability;

  const LocationResultByIdAndDate({
    this.id,
    this.weatherStateName,
    this.weatherStateAbbr,
    this.windDirectionCompass,
    this.created,
    this.applicableDate,
    this.minTemp,
    this.maxTemp,
    this.theTemp,
    this.windSpeed,
    this.windDirection,
    this.airPressure,
    this.humidity,
    this.visibility,
    this.predictability,
  });

  @override
  String toString() {
    return 'LocationResultByIdAndDate(id: $id, weatherStateName: $weatherStateName, weatherStateAbbr: $weatherStateAbbr, windDirectionCompass: $windDirectionCompass, created: $created, applicableDate: $applicableDate, minTemp: $minTemp, maxTemp: $maxTemp, theTemp: $theTemp, windSpeed: $windSpeed, windDirection: $windDirection, airPressure: $airPressure, humidity: $humidity, visibility: $visibility, predictability: $predictability)';
  }

  factory LocationResultByIdAndDate.fromJson(Map<String, dynamic> json) {
    return LocationResultByIdAndDate(
      id: json['id'] as int?,
      weatherStateName: json['weather_state_name'] as String?,
      weatherStateAbbr: json['weather_state_abbr'] as String?,
      windDirectionCompass: json['wind_direction_compass'] as String?,
      created: json['created'] as String?,
      applicableDate: json['applicable_date'] as String?,
      minTemp: (json['min_temp'] as num?)?.toDouble(),
      maxTemp: (json['max_temp'] as num?)?.toDouble(),
      theTemp: (json['the_temp'] as num?)?.toDouble(),
      windSpeed: (json['wind_speed'] as num?)?.toDouble(),
      windDirection: (json['wind_direction'] as num?)?.toDouble(),
      airPressure: json['air_pressure'] as int?,
      humidity: json['humidity'] as int?,
      visibility: (json['visibility'] as num?)?.toDouble(),
      predictability: json['predictability'] as int?,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'weather_state_name': weatherStateName,
        'weather_state_abbr': weatherStateAbbr,
        'wind_direction_compass': windDirectionCompass,
        'created': created,
        'applicable_date': applicableDate,
        'min_temp': minTemp,
        'max_temp': maxTemp,
        'the_temp': theTemp,
        'wind_speed': windSpeed,
        'wind_direction': windDirection,
        'air_pressure': airPressure,
        'humidity': humidity,
        'visibility': visibility,
        'predictability': predictability,
      };

  @override
  int get hashCode =>
      id.hashCode ^
      weatherStateName.hashCode ^
      weatherStateAbbr.hashCode ^
      windDirectionCompass.hashCode ^
      created.hashCode ^
      applicableDate.hashCode ^
      minTemp.hashCode ^
      maxTemp.hashCode ^
      theTemp.hashCode ^
      windSpeed.hashCode ^
      windDirection.hashCode ^
      airPressure.hashCode ^
      humidity.hashCode ^
      visibility.hashCode ^
      predictability.hashCode;
}
