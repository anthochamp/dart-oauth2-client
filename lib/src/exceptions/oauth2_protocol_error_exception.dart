// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

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
