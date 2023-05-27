import 'package:domain/src/shared/exception/business_exception.dart';

class ShortSearchTextException implements BusinessException {
  
  @override
  String get message => 'Search text is too short';
}