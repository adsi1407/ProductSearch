class NegativeParamException implements Exception {
  NegativeParamException({required String param}){
    message = '$param cannot be negative.';
  }

  late final String message;

  @override
  String toString() {
    return message;
  }
}