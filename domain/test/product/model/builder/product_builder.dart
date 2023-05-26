import 'dart:math';

import 'package:domain/src/product/model/product.dart';
import 'package:domain/src/product/model/seller.dart';

import 'seller_builder.dart';

class ProductBuilder {
  ProductBuilder() {
    _id = "MCO1136067281";
    _title = "Sony Playstation 4 Slim 500gb Standard Color  Negro Azabache";
    _thumbnail = "http://http2.mlstatic.com/D_817486-MLA32731749427_112019-I.jpg";
    _price = 1999900;
    _currencyId = "COP";
    _seller = SellerBuilder().build();
  }

  late String _id;
  late String _title;
  late String _thumbnail;
  late int _price;
  late String _currencyId;
  late Seller _seller;

  ProductBuilder withId(String id){
    _id = id;
    return this;
  }

  ProductBuilder withTitle(String title){
    _title = title;
    return this;
  }

  ProductBuilder withThumbnail(String thumbnail){
    _thumbnail = thumbnail;
    return this;
  }

  ProductBuilder withPrice(int price){
    _price = price;
    return this;
  }

  ProductBuilder withCurrencyId(String currencyId){
    _currencyId = currencyId;
    return this;
  }

  ProductBuilder withSeller(Seller seller){
    _seller = seller;
    return this;
  }

  Product build() => Product(
    id: _id,
    title: _title,
    thumbnail: _thumbnail,
    price: _price,
    currencyId: _currencyId,
    seller: _seller
  );

  List<Product> buildProductList(int quantity) {
    final products = <Product>[];
    final random = Random();

    for (var i = 0; i < quantity; i++) {
      final randomId = random.toString();
      final randomPrice = random.nextInt(2000000);

      final product = withId(randomId).withPrice(randomPrice).build();
      products.add(product);
    }

    return products;
  }
}