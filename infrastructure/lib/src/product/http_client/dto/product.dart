import 'package:infrastructure/src/product/http_client/dto/seller.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  Product({
		required this.id,
		required this.title,
		//this.condition,
		//this.thumbnailId,
		//this.catalogProductId,
		// this.listingTypeId,
		// this.permalink,
		// this.buyingMode,
		// this.siteId,
		// this.categoryId,
		// this.domainId,
		required this.thumbnail,
		required this.currencyId,
		// this.orderBackend,
		required this.price,
		// this.originalPrice,
		// this.salePrice,
		// this.soldQuantity,
		// this.availableQuantity,
		// this.officialStoreId,
		required this.useThumbnailId,
		required this.acceptsMercadopago,
		// this.tags,
		// this.shipping,
		// this.stopTime,
		required this.seller,
		// this.sellerAddress,
		// this.address,
		// this.attributes,
		// this.installments,
		// this.winnerItemId,
	  required this.catalogListing,
		// this.discounts,
		// this.promotions,
		// this.inventoryId,
	});

	final String id;
	final String title;
	// String condition;
	// String thumbnailId;
	// String catalogProductId;
	// String listingTypeId;
	// String permalink;
	// String buyingMode;
	// String siteId;
	// String categoryId;
	// String domainId;
	final String thumbnail;
  @JsonKey(name: 'currency_id')
	final String currencyId;
	// int orderBackend;
	final int price;
	// dynamic originalPrice;
	// dynamic salePrice;
	// int soldQuantity;
	// int availableQuantity;
	// dynamic officialStoreId;
  @JsonKey(name: 'use_thumbnail_id')
	final bool useThumbnailId;
  @JsonKey(name: 'accepts_mercadopago')
	final bool acceptsMercadopago;
	// List<String> tags;
	// Shipping shipping;
	// String stopTime;
	final Seller seller;
	// SellerAddress sellerAddress;
	// Address address;
	// List<Attribute> attributes;
	// Installments installments;
	// dynamic winnerItemId;
  @JsonKey(name: 'catalog_listing', defaultValue: false)
	final bool catalogListing;
	// dynamic discounts;
	// List<dynamic> promotions;
	// dynamic inventoryId;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}