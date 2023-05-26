import 'package:domain/src/product/model/seller.dart';

class SellerBuilder {
  SellerBuilder() {
    _id = 783790319;
    _nickname = "MRBLIS.COM";
    _permalink = "http://perfil.mercadolibre.com.co/MRBLIS.COM";
  }

  late int _id;
	late String _nickname;
  late String _permalink;

  SellerBuilder withId(int id){
    _id = id;
    return this;
  }

  SellerBuilder withNickName(String nickName){
    _nickname = nickName;
    return this;
  }

  SellerBuilder withPermalink(String permalink){
    _permalink = permalink;
    return this;
  }

  Seller build() => Seller(
    id: _id,
    nickname: _nickname,
    permalink: _permalink
  );
}