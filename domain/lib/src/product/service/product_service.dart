import 'package:domain/src/product/exception/no_data_product_exception.dart';
import 'package:domain/src/product/exception/short_search_text_exception.dart';
import 'package:domain/src/product/model/product.dart';
import 'package:domain/src/product/repository/product_repository.dart';

class ProductService {
  ProductService({required this.productRepository});

  final ProductRepository productRepository;

  static const int _charQuantityRestriction = 3;

  Future<List<Product>> getProductsBySearchText(String searchText) async {
    _validateEmptyParameters(searchText);
    final productList = await productRepository.getProductsBySearchText(searchText);

    if (productList.isEmpty) {
      throw NoDataProductException();
    }

    return productList;    
  }

  void _validateEmptyParameters(String searchText) {
      if(searchText.isEmpty || searchText.length < _charQuantityRestriction) throw ShortSearchTextException();
  }
}