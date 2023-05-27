import 'package:domain/src/shared/exception/business_exception.dart';

class ShortSearchTextException implements BusinessException {
  ShortSearchTextException({message = 'Search text is too short'});
}