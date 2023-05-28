import 'package:infrastructure/src/shared/exception/technical_exception.dart';

class HttpClientException extends TechnicalException {
  HttpClientException() : super(_httpclientExceptionMessage);

  static const _httpclientExceptionMessage =
      'There was an error when trying to connect to products service, please try again later.';
}