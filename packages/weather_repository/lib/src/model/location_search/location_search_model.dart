class LocationSearchResult {
  LocationSearchResult({
    this.locationSearchModel = const [],
  });
  List<LocationSearchModel> locationSearchModel;

  factory LocationSearchResult.fromJson(List<dynamic> parsedJson) {
    List<LocationSearchModel> locationSearch =
        parsedJson.map((i) => LocationSearchModel.fromJson(i)).toList();

    return LocationSearchResult(
      locationSearchModel: locationSearch,
    );
  }
}

class LocationSearchModel {
  LocationSearchModel({
    this.distance,
    this.title = '',
    this.locationType = '',
    this.woeid = 0,
    this.latLong = '',
  });

  final int? distance;
  final String title;
  final String locationType;
  final int woeid;
  final String latLong;

  factory LocationSearchModel.fromJson(Map<String, dynamic> json) =>
      LocationSearchModel(
        title: json['title'] as String,
        locationType: json['location_type'] as String,
        woeid: json['woeid'] as int,
        latLong: json['latt_long'] as String,
        distance: json['distance'] == null ? null : json['distance'] as int,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'location_type': locationType,
        'woeid': woeid,
        'latt_long': latLong,
        'distance': distance,
      };
}
