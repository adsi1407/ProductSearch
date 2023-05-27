import 'package:domain/src/shared/exception/business_exception.dart';

class NoDataProductException implements BusinessException {
  
  @override
  String get message => 'The entered search returned no results';
}