class ServerException implements Exception {
  String message;
  int? statusCode;

  ServerException(this.message, this.statusCode);
}
