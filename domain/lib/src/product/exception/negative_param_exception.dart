import 'package:domain/src/shared/exception/business_exception.dart';

class NegativeParamException implements BusinessException {
  NegativeParamException({required String param}){
    message = '$param cannot be negative.';
  }

  late final String message;

  @override
  String toString() {
    return message;
  }
}