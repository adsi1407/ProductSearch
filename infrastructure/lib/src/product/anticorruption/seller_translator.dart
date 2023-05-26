import 'package:domain/domain.dart' as domain;
import 'package:infrastructure/src/product/http_client/dto/seller.dart';

class SellerTranslator {
  static domain.Seller fromDtoToDomain(Seller sellerDto) {
    return domain.Seller(
      id: sellerDto.id,
      nickname: sellerDto.nickname,
      permalink: sellerDto.permalink
    );
  }
}