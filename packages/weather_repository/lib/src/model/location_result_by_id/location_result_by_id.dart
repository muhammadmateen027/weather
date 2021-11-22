import 'package:flutter/foundation.dart';

import 'consolidated_weather.dart';
import 'parent.dart';
import 'source.dart';

@immutable
class LocationResultById {
  final List<ConsolidatedWeather>? consolidatedWeather;
  final String? time;
  final String? sunRise;
  final String? sunSet;
  final String? timezoneName;
  final Parent? parent;
  final List<Source>? sources;
  final String? title;
  final String? locationType;
  final int? woeid;
  final String? lattLong;
  final String? timezone;

  const LocationResultById({
    this.consolidatedWeather,
    this.time,
    this.sunRise,
    this.sunSet,
    this.timezoneName,
    this.parent,
    this.sources,
    this.title,
    this.locationType,
    this.woeid,
    this.lattLong,
    this.timezone,
  });

  @override
  String toString() {
    return 'LocationResultById(consolidatedWeather: $consolidatedWeather, time: $time, sunRise: $sunRise, sunSet: $sunSet, timezoneName: $timezoneName, parent: $parent, sources: $sources, title: $title, locationType: $locationType, woeid: $woeid, lattLong: $lattLong, timezone: $timezone)';
  }

  factory LocationResultById.fromJson(Map<String, dynamic> json) {
    return LocationResultById(
      consolidatedWeather: (json['consolidated_weather']
              as List<Map<String, dynamic>>?)
          ?.map((e) => ConsolidatedWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
      time: json['time'] as String?,
      sunRise: json['sun_rise'] as String?,
      sunSet: json['sun_set'] as String?,
      timezoneName: json['timezone_name'] as String?,
      parent: json['parent'] == null
          ? null
          : Parent.fromJson(json['parent'] as Map<String, dynamic>),
      sources: (json['sources'] as List<Map<String, dynamic>>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      locationType: json['location_type'] as String?,
      woeid: json['woeid'] as int?,
      lattLong: json['latt_long'] as String?,
      timezone: json['timezone'] as String?,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'consolidated_weather':
            consolidatedWeather?.map((e) => e.toJson()).toList(),
        'time': time,
        'sun_rise': sunRise,
        'sun_set': sunSet,
        'timezone_name': timezoneName,
        'parent': parent?.toJson(),
        'sources': sources?.map((e) => e.toJson()).toList(),
        'title': title,
        'location_type': locationType,
        'woeid': woeid,
        'latt_long': lattLong,
        'timezone': timezone,
      };

  @override
  int get hashCode =>
      consolidatedWeather.hashCode ^
      time.hashCode ^
      sunRise.hashCode ^
      sunSet.hashCode ^
      timezoneName.hashCode ^
      parent.hashCode ^
      sources.hashCode ^
      title.hashCode ^
      locationType.hashCode ^
      woeid.hashCode ^
      lattLong.hashCode ^
      timezone.hashCode;
}
