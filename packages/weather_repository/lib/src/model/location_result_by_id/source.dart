import 'package:flutter/foundation.dart';

@immutable
class Source {
  final String? title;
  final String? slug;
  final String? url;
  final int? crawlRate;

  const Source({this.title, this.slug, this.url, this.crawlRate});

  @override
  String toString() {
    return 'Source(title: $title, slug: $slug, url: $url, crawlRate: $crawlRate)';
  }

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        title: json['title'] as String?,
        slug: json['slug'] as String?,
        url: json['url'] as String?,
        crawlRate: json['crawl_rate'] as int?,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'slug': slug,
        'url': url,
        'crawl_rate': crawlRate,
      };

  @override
  int get hashCode =>
      title.hashCode ^ slug.hashCode ^ url.hashCode ^ crawlRate.hashCode;
}
