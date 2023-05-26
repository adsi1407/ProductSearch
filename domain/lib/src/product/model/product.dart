import 'package:domain/src/product/exception/negative_param_exception.dart';
import 'package:domain/src/product/model/seller.dart';
import 'package:domain/src/product/exception/empty_param_exception.dart';

class Product {
  
  Product({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.price,
    required this.currencyId,
    required this.seller
  }) {
    _validateEmptyParameters();
  }

  final String id;
  final String title;
  final String thumbnail;
  final int price;
  final String currencyId;
  final Seller seller;

  void _validateEmptyParameters() {
    if(id.isEmpty) throw EmptyParamException(param: 'id');
    if(title.isEmpty) throw EmptyParamException(param: 'title');
    if(thumbnail.isEmpty) throw EmptyParamException(param: 'thumbnail');
    if(price < 0) throw NegativeParamException(param: 'price');
    if(currencyId.isEmpty) throw EmptyParamException(param: 'currencyId');
  }

}

