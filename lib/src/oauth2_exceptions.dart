import 'package:anthochamp_dart_essentials/dart_essentials.dart';

import 'package:oauth2_client/src/oauth2_protocol_error.dart';

class OAuth2StateMismatchException implements Exception {}

class OAuth2InvalidDataException extends InvalidDataException {
  OAuth2InvalidDataException(super.message, super.source);
}

class OAuth2ProtocolErrorException extends HttpStatusException {
  final OAuth2ProtocolError protocolError;

  OAuth2ProtocolErrorException({
    required super.status,
    super.statusText,
    required super.url,
    required this.protocolError,
  });

  @override
  String toString() {
    return [super.toString(), protocolError.toString()].join('\n');
  }
}
