// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import '../oauth2_protocol_error.dart';
import 'oauth2_http_exception.dart';

class OAuth2ProtocolErrorException extends OAuth2HttpException {
  final OAuth2ProtocolError protocolError;

  OAuth2ProtocolErrorException({
    required super.status,
    required super.url,
    required this.protocolError,
  });

  @override
  String toString() {
    return [super.toString(), protocolError.toString()].join('\n');
  }
}
