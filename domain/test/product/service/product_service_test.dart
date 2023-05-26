import 'package:domain/src/product/exception/no_data_product_exception.dart';
import 'package:domain/src/product/exception/short_search_text_exception.dart';
import 'package:domain/src/product/repository/product_repository.dart';
import 'package:domain/src/product/service/product_service.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';

import '../model/builder/product_builder.dart';

class MockProductRepository extends Mock implements ProductRepository {}

void main() {
  late MockProductRepository _mockProductRepository;
  late ProductService _productService;

  setUp( () {
    _mockProductRepository = MockProductRepository();
    _productService = ProductService(productRepository: _mockProductRepository);
  });

  group("getProductsBySearchText",() {

    test("search product with empty text -> throws ShortSearchTextException",() {
      //Arrange
      const searchText = "";

      //Act - Assert
      expect(() => _productService.getProductsBySearchText(searchText), throwsA(isA<ShortSearchTextException>()));
    });

    test("search product with too short text -> throws ShortSearchTextException",() {
      //Arrange
      const searchText = "pl";

      //Act - Assert
      expect(() => _productService.getProductsBySearchText(searchText), throwsA(isA<ShortSearchTextException>()));
    });

    test("search product with no results -> throws NoDataProductException",() async {
      //Arrange
      final searchText = "sfdcdhvubku";
      final products = ProductBuilder().buildProductList(10);

      when(() => _mockProductRepository.getProductsBySearchText(searchText))
        .thenAnswer((_) async => products.where((product) => product.id.contains(searchText)).toList());

      //Act - Assert
      expect(() => _productService.getProductsBySearchText(searchText), throwsA(isA<NoDataProductException>()));
    });

    test('search product with results -> valid list of products', () async {
      //Arrange
      final searchText = "playstation 4";
      final products = ProductBuilder().buildProductList(10);

      when(() => _mockProductRepository.getProductsBySearchText(searchText))
        .thenAnswer((_) async => products.where((product) => product.title.toLowerCase().contains(searchText)).toList());

      //Act
      final productResults = await _productService.getProductsBySearchText(searchText);

      //Assert
      expect(productResults.length, 10);
    });
  });
}