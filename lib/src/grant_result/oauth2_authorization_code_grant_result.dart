// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:ac_dart_essentials/ac_dart_essentials.dart';

import '../exceptions/oauth2_invalid_data_exception.dart';
import '../oauth2_typedefs.dart';

class OAuth2AuthorizationCodeGrantResult {
  /// The authorization code generated by the authorization server.
  final OAuth2AuthorizationCode code;

  /// Additional customParameters
  final OAuth2Parameters customParameters;

  const OAuth2AuthorizationCodeGrantResult({
    required this.code,
    this.customParameters = const {},
  });

  factory OAuth2AuthorizationCodeGrantResult.fromJson(JsonObject json) {
    OAuth2Parameters customParameters = {}..addAll(json);

    final String? code = customParameters.remove('code');
    if (code == null) {
      throw OAuth2InvalidDataException('Missing "code" field', json);
    }

    return OAuth2AuthorizationCodeGrantResult(
      code: code,
      customParameters: customParameters,
    );
  }

  JsonObject toJson() => {
        ...customParameters,
        'code': code,
      };
}
