import 'package:json_annotation/json_annotation.dart';

part 'seller.g.dart';

@JsonSerializable()
class Seller {
  Seller({
		required this.id,
		required this.nickname,
		required this.carDealer,
		required this.realEstateAgency,
		required this.empty,
		required this.registrationDate,
		required this.tags,
		required this.carDealerLogo,
		required this.permalink,
		//this.sellerReputation,
		//this.eshop,
	});

  final int id;
	final String nickname;
  @JsonKey(name: 'car_dealer')
	final bool carDealer;
  @JsonKey(name: 'real_estate_agency')
	final bool realEstateAgency;
	final bool empty;
  @JsonKey(name: 'registration_date')
	final String registrationDate;
	final List<String> tags;
  @JsonKey(name: 'car_dealer_logo')
	final String carDealerLogo;
	final String permalink;
	//final SellerReputation sellerReputation;
	//final Eshop eshop;

  factory Seller.fromJson(Map<String, dynamic> json) => _$SellerFromJson(json);
}