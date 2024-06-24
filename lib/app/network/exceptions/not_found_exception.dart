import 'dart:io';

import '/app/network/exceptions/api_exception.dart';

class NotFoundException extends ApiException {
  NotFoundException(String message, int status)
      : super(httpCode: HttpStatus.notFound, status: status, message: message);
}
