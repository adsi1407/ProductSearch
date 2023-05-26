import 'package:infrastructure/src/product/http_client/dto/paging.dart';
import 'package:infrastructure/src/product/http_client/dto/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {
  SearchResult({
    required this.siteId,
    required this.countryDefaultTimeZone,
    required this.query,
    required this.paging,
    required this.products,
    // this.sort,
    // this.availableSorts,
    // this.filters,
    // this.availableFilters,
  });

  @JsonKey(name: 'site_id')
  String siteId;
  @JsonKey(name: 'country_default_time_zone')
  String countryDefaultTimeZone;
  String query;
  Paging paging;
  @JsonKey(name: 'results')
  List<Product> products;
  // Sort sort;
  // List<Sort> availableSorts;
  // List<Filter> filters;
  // List<AvailableFilter> availableFilters;

  factory SearchResult.fromJson(Map<String, dynamic> json) => _$SearchResultFromJson(json);
}