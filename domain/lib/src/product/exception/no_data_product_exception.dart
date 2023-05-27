import 'package:domain/src/shared/exception/business_exception.dart';

class NoDataProductException implements BusinessException {
  NoDataProductException({message = 'The entered search returned no results'});
}