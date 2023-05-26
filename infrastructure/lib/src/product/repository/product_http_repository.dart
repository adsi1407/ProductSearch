import 'dart:convert';

import 'package:domain/domain.dart';
import 'package:infrastructure/src/product/anticorruption/product_translator.dart';
import 'package:infrastructure/src/product/http_client/dto/search_result.dart';
import 'package:infrastructure/src/shared/http_client/http_client.dart';

class ProducthttpRepository implements ProductRepository {
  ProducthttpRepository() {
    _httpClient = HttpClient();
  }

  late HttpClient _httpClient;

  static const _authority = 'api.mercadolibre.com';
  static const _unencodedPath = "/sites/MCO/search";
  static const _product_search_query_param = "q";
  
  @override
  Future<List<Product>> getProductsBySearchText(String searchText) async {
    final queryParams = <String, dynamic>{ _product_search_query_param: searchText};
    final uri = Uri.https(_authority, _unencodedPath, queryParams);

    final response = await _httpClient.getRequest(uri);
    final data = SearchResult.fromJson(jsonDecode(response) as Map<String, dynamic>);
    return data.products.map(ProductTranslator.fromDtoToDomain).toList();
  }
}