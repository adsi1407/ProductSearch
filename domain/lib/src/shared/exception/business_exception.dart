abstract class BusinessException implements Exception {
  BusinessException({required this.message});
  
  final String message;

  @override
  String toString() {
    return message;
  }
}
