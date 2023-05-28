import 'package:domain/src/product/exception/empty_param_exception.dart';
import 'package:domain/src/product/exception/negative_param_exception.dart';

class Seller {
  Seller({
    required this.id,
    required this.nickname,
    required this.permalink,
  }) {
    _validateEmptyParameters();
  }

  final int id;
	final String nickname;
  final String permalink;

  void _validateEmptyParameters() {
    if(id < 0) throw NegativeParamException(param: 'id');
    if(nickname.isEmpty) throw EmptyParamException(param: 'nickname');
    if(permalink.isEmpty) throw EmptyParamException(param: 'permalink');
  }
}
