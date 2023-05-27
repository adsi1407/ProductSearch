// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      currencyId: json['currency_id'] as String,
      price: json['price'] as int,
      useThumbnailId: json['use_thumbnail_id'] as bool,
      acceptsMercadopago: json['accepts_mercadopago'] as bool,
      seller: Seller.fromJson(json['seller'] as Map<String, dynamic>),
      catalogListing: json['catalog_listing'] as bool? ?? false,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'currency_id': instance.currencyId,
      'price': instance.price,
      'use_thumbnail_id': instance.useThumbnailId,
      'accepts_mercadopago': instance.acceptsMercadopago,
      'seller': instance.seller,
      'catalog_listing': instance.catalogListing,
    };
