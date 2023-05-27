// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Seller _$SellerFromJson(Map<String, dynamic> json) => Seller(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      carDealer: json['car_dealer'] as bool,
      realEstateAgency: json['real_estate_agency'] as bool,
      empty: json['_'] as bool,
      registrationDate: json['registration_date'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      carDealerLogo: json['car_dealer_logo'] as String,
      permalink: json['permalink'] as String,
    );

Map<String, dynamic> _$SellerToJson(Seller instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'car_dealer': instance.carDealer,
      'real_estate_agency': instance.realEstateAgency,
      '_': instance.empty,
      'registration_date': instance.registrationDate,
      'tags': instance.tags,
      'car_dealer_logo': instance.carDealerLogo,
      'permalink': instance.permalink,
    };
