import 'package:domain/src/shared/exception/business_exception.dart';

class EmptyParamException implements BusinessException {
  EmptyParamException({required String param}) {
    message = '$param cannot be empty.';
  }

  late final String message;

  @override
  String toString() {
    return message;
  }
}