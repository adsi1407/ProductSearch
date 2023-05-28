import 'package:domain/src/product/exception/negative_param_exception.dart';
import 'package:domain/src/product/model/product.dart';
import 'package:domain/src/product/exception/empty_param_exception.dart';
import 'package:test/test.dart';

import 'builder/product_builder.dart';
import 'builder/seller_builder.dart';

void main() {
  group("constructor",() {
    
    test("create product with empty id -> throws EmptyParamException",() {
      //Arrange
      const productId = "";

      //Act - Assert
      expect(() => ProductBuilder().withId(productId).build(), throwsA(isA<EmptyParamException>()));
    });

    test("create product with empty title -> throws EmptyParamException",() {
      //Arrange
      const title = "";

      //Act - Assert
      expect(() => ProductBuilder().withTitle(title).build(), throwsA(isA<EmptyParamException>()));
    });

    test("create product with empty thumbnail -> throws EmptyParamException",() {
      //Arrange
      const thumbnail = "";

      //Act - Assert
      expect(() => ProductBuilder().withThumbnail(thumbnail).build(), throwsA(isA<EmptyParamException>()));
    });

    test("create product with negative price -> throws NegativeParamException",() {
      //Arrange
      const price = -1;

      //Act - Assert
      expect(() => ProductBuilder().withPrice(price).build(), throwsA(isA<NegativeParamException>()));
    });

    test("create product with negative price -> throws NegativeParamException with specific message",() {
      //Arrange
      const price = -1;
      const exceptionMessage = "El parámetro price no puede ser negativo.";

      //Act - Assert
      expect(() => ProductBuilder().withPrice(price).build(),
        throwsA(predicate((e) => e is NegativeParamException && e.toString() == exceptionMessage)));
    });

    test("create product with empty currencyId -> throws EmptyParamException",() {
      //Arrange
      const currencyId = "";

      //Act - Assert
      expect(() => ProductBuilder().withCurrencyId(currencyId).build(), throwsA(isA<EmptyParamException>()));
    });

    test("create product with empty currencyId -> throws EmptyParamException with specific message",() {
      //Arrange
      const currencyId = "";
      const exceptionMessage = "El parámetro currencyId no puede ser vacío.";

      //Act - Assert
      expect(() => ProductBuilder().withCurrencyId(currencyId).build(),
        throwsA(predicate((e) => e is EmptyParamException && e.toString() == exceptionMessage)));
    });

    test('create product with valid parameters -> instance of Product', () {
      //Arrange
      final productId = "MCO880327392";
      final title = "Sony Playstation 4 Slim 1tb Standard Color  Negro Azabache";
      final thumbnail = "http://http2.mlstatic.com/D_817486-MLA32731749427_112019-I.jpg";
      final price = 1919783;
      final currencyId = "COP";

      final sellerId = 304277859;
      final nickName = "REVELGAMES";
      final permalink = "http://perfil.mercadolibre.com.co/REVELGAMES";

      final seller = SellerBuilder()
        .withId(sellerId)
        .withNickName(nickName)
        .withPermalink(permalink)
        .build();

      //Act
      final product = ProductBuilder()
        .withId(productId)
        .withTitle(title)
        .withThumbnail(thumbnail)
        .withPrice(price)
        .withCurrencyId(currencyId)
        .withSeller(seller)
        .build();

      //Assert
      expect(product, isA<Product>());
    });
  });
}