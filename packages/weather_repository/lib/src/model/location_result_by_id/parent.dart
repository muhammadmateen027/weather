import 'package:flutter/foundation.dart';

@immutable
class Parent {
  final String? title;
  final String? locationType;
  final int? woeid;
  final String? lattLong;

  const Parent({this.title, this.locationType, this.woeid, this.lattLong});

  @override
  String toString() {
    return 'Parent(title: $title, locationType: $locationType, woeid: $woeid, lattLong: $lattLong)';
  }

  factory Parent.fromJson(Map<String, dynamic> json) => Parent(
        title: json['title'] as String?,
        locationType: json['location_type'] as String?,
        woeid: json['woeid'] as int?,
        lattLong: json['latt_long'] as String?,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'location_type': locationType,
        'woeid': woeid,
        'latt_long': lattLong,
      };

  @override
  int get hashCode =>
      title.hashCode ^
      locationType.hashCode ^
      woeid.hashCode ^
      lattLong.hashCode;
}
