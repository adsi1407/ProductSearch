import 'package:domain/src/shared/exception/business_exception.dart';

class ShortSearchTextException implements BusinessException {
  
  @override
  String get message => 'El texto ingresado es muy corto. Debe ingresar al menos tres caracteres.';
}