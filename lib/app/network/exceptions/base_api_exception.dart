import '/app/network/exceptions/app_exception.dart';

abstract class BaseApiException extends AppException {
  final int httpCode;
  final int status;

  BaseApiException({this.httpCode = -1, this.status = 500, super.message});
}
