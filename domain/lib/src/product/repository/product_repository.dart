import 'package:domain/src/product/model/product.dart';

abstract class ProductRepository {

  Future<List<Product>> getProductsBySearchText(String searchText);
}