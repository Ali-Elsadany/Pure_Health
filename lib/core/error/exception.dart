import 'error_model.dart';

class ServerException implements Exception {
  final ErrorModel errorModel;

  ServerException(this.errorModel);
}

class BadCertificateException extends ServerException {
  BadCertificateException(super.errorModel);

}
class ConnectionTimeoutException extends ServerException {
  ConnectionTimeoutException(super.errorModel);

}
class BadResponseException extends ServerException {
  BadResponseException(super.errorModel);

}
class ReceiveTimeoutException extends ServerException {
  ReceiveTimeoutException(super.errorModel);

}
class ConnectionErrorException extends ServerException {
  ConnectionErrorException(super.errorModel);

}
class SendTimeoutException extends ServerException {
  SendTimeoutException(super.errorModel);

}
class UnauthorizedException extends ServerException {
  UnauthorizedException(super.errorModel);

}
class ForbiddenException extends ServerException {
  ForbiddenException(super.errorModel);

}
class NotFoundException extends ServerException {
  NotFoundException(super.errorModel);

}
class CofficientException extends ServerException {
  CofficientException(super.errorModel);

}
class CancelException extends ServerException {
  CancelException(super.errorModel);

}
class UnknownException extends ServerException {
  UnknownException(super.errorModel);

}