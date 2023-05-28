import 'package:domain/src/shared/exception/business_exception.dart';

class EmptyParamException implements BusinessException {
  EmptyParamException({required String param}) {
    message = 'El parámetro $param no puede ser vacío.';
  }

  @override
  late final String message;

  @override
  String toString() {
    return message;
  }
}
