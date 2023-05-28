import 'package:infrastructure/src/product/http_client/dto/seller.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  Product({
		required this.id,
		required this.title,
		required this.thumbnail,
		required this.currencyId,
		required this.price,
		required this.useThumbnailId,
		required this.acceptsMercadopago,
		required this.seller,
	  required this.catalogListing,
	});

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

	final String id;
	final String title;
	final String thumbnail;
  @JsonKey(name: 'currency_id')
	final String currencyId;
	final int price;
  @JsonKey(name: 'use_thumbnail_id')
	final bool useThumbnailId;
  @JsonKey(name: 'accepts_mercadopago')
	final bool acceptsMercadopago;
	final Seller seller;
  @JsonKey(name: 'catalog_listing', defaultValue: false)
	final bool catalogListing;
}
