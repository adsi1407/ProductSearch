import 'package:domain/src/product/exception/negative_param_exception.dart';
import 'package:domain/src/product/model/seller.dart';
import 'package:domain/src/product/exception/empty_param_exception.dart';
import 'package:test/test.dart';

import 'builder/seller_builder.dart';

void main() {
  group("constructor",() {

    test("create seller with negative id -> throws NegativeParamException",() {
      //Arrange
      const sellerId = -1;

      //Act - Assert
      expect(() => SellerBuilder().withId(sellerId).build(), throwsA(isA<NegativeParamException>()));
    });

    test("create seller with empty nickname -> throws EmptyParamException",() {
      //Arrange
      const nickname = "";

      //Act - Assert
      expect(() => SellerBuilder().withNickName(nickname).build(), throwsA(isA<EmptyParamException>()));
    });

    test("create seller with empty permalink -> throws EmptyParamException",() {
      //Arrange
      const permalink = "";

      //Act - Assert
      expect(() => SellerBuilder().withPermalink(permalink).build(), throwsA(isA<EmptyParamException>()));
    });

    test('create seller with valid parameters -> instance of Seller', () {
      //Arrange
      final sellerId = 304277859;
      final nickName = "REVELGAMES";
      final permalink = "http://perfil.mercadolibre.com.co/REVELGAMES";

      //Act
      final seller = SellerBuilder()
        .withId(sellerId)
        .withNickName(nickName)
        .withPermalink(permalink)
        .build();

      //Assert
      expect(seller, isA<Seller>());
    });
  });
}