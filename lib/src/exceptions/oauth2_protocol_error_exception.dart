// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:ac_dart_essentials/ac_dart_essentials.dart';

import '../oauth2_protocol_error.dart';

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
