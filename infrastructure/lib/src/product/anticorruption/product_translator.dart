import 'package:domain/domain.dart' as domain;
import 'package:infrastructure/src/product/anticorruption/seller_translator.dart';
import 'package:infrastructure/src/product/http_client/dto/product.dart';

class ProductTranslator {
  static domain.Product fromDtoToDomain(Product productDto) {

    return domain.Product(
      id: productDto.id,
      title: productDto.title,
      thumbnail: productDto.thumbnail,
      price: productDto.price,
      currencyId: productDto.currencyId,
      seller: SellerTranslator.fromDtoToDomain(productDto.seller),
    );
  }
}
