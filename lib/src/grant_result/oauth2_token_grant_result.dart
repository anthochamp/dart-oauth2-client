// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

// https://www.rfc-editor.org/rfc/rfc6749#section-5.1

import 'package:ac_dart_essentials/ac_dart_essentials.dart';

import '../exceptions/oauth2_invalid_data_exception.dart';
import '../oauth2_typedefs.dart';

class OAuth2TokenGrantResult {
  /// The access token issued by the authorization server.
  final String accessToken;

  /// The type of the token issued as described in Section 7.1.
  // https://www.rfc-editor.org/rfc/rfc6749#section-7.1
  final String tokenType;

  /// The lifetime in seconds of the access token.  For
  /// example, the value "3600" denotes that the access token will
  /// expire in one hour from the time the response was generated.
  final Duration? expiresIn;

  /// The refresh token, which can be used to obtain new
  /// access tokens using the same authorization grant as described
  /// in Section 6
  final String? refreshToken;

  /// The scopes of the access token as described by Section 3.3.
  final Iterable<OAuth2Scope>? scopes;

  /// Additional customParameters
  final OAuth2Parameters customParameters;

  const OAuth2TokenGrantResult({
    required this.accessToken,
    required this.tokenType,
    this.expiresIn,
    this.refreshToken,
    this.scopes,
    this.customParameters = const {},
  });

  factory OAuth2TokenGrantResult.fromJson(
    JsonObject json, {
    required String scopesGlue,
  }) {
    OAuth2Parameters customParameters = {}..addAll(json);

    final String? accessToken = customParameters.remove('access_token');
    final String? tokenType = customParameters.remove('token_type');
    if (accessToken == null || tokenType == null) {
      throw OAuth2InvalidDataException(
        'Missing one or both "access_token" "token_type" fields',
        json,
      );
    }

    final String? refreshToken = customParameters.remove('refresh_token');
    final dynamic expiresInValue = customParameters.remove('expires_in');
    Duration? expiresIn;
    if (expiresInValue != null) {
      expiresIn = Duration(
        seconds:
            expiresInValue is String
                ? int.parse(expiresInValue)
                : expiresInValue,
      );
    }
    final Iterable<OAuth2Scope>? scopes = customParameters
        .remove('scope')
        ?.split(scopesGlue);

    return OAuth2TokenGrantResult(
      accessToken: accessToken,
      tokenType: tokenType,
      refreshToken: refreshToken,
      expiresIn: expiresIn,
      scopes: scopes,
      customParameters: customParameters,
    );
  }

  JsonObject toJson({required String scopesGlue}) => <String, dynamic>{
    ...customParameters,
    'access_token': accessToken,
    'token_type': tokenType,
    'refresh_token': refreshToken,
    'expires_in': expiresIn?.inSeconds,
    'scope': scopes?.join(scopesGlue),
  };
}
