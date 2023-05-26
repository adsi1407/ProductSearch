// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult(
      siteId: json['site_id'] as String,
      countryDefaultTimeZone: json['country_default_time_zone'] as String,
      query: json['query'] as String,
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
      products: (json['results'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'site_id': instance.siteId,
      'country_default_time_zone': instance.countryDefaultTimeZone,
      'query': instance.query,
      'paging': instance.paging,
      'results': instance.products,
    };
