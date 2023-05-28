import 'package:infrastructure/src/shared/exception/technical_exception.dart';

class HttpClientException extends TechnicalException {
  HttpClientException() : super(_httpclientExceptionMessage);

  static const _httpclientExceptionMessage =
      'Hay un error cuando se intenta conectar al servicio web. Por favor intente de nuevo.';
}
