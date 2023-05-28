import 'package:domain/src/shared/exception/business_exception.dart';

class NoDataProductException implements BusinessException {
  
  @override
  String get message => 'La búsqueda ingresada no retornó resultados.';
}