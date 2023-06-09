import 'package:http/http.dart';
import 'package:infrastructure/src/shared/http_client/exception/http_client_exception.dart';

class HttpClient {
  HttpClient() {
    _client = Client();
    _timeOut = const Duration(seconds: _maxSecondsToWaitResponse);
  }

  late final Client _client;
  late final Duration _timeOut;

  static const _maxSecondsToWaitResponse = 10;
  static const _httpStatusCodeOk = 200;

  Future<String> getRequest(Uri url) async {
    final response = await _client.get(url).timeout(_timeOut);
    return response.statusCode == _httpStatusCodeOk
        ? response.body
        : throw HttpClientException();
  }
}
