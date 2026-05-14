class ServerException implements Exception {
  final String message;
  ServerException(this.message);
}

class InternalException implements Exception {
  final String message;
  InternalException(this.message);
}

class LocalDataException implements Exception {
  final String message;
  LocalDataException(this.message);
}

class NotFoundException implements Exception {}