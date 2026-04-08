// SPDX-FileCopyrightText: © 2023 - 2026 Anthony Champagne <dev@anthonychampagne.fr>
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
    final JsonObject rawParams = {...json};

    final String? accessToken = rawParams.remove('access_token') as String?;
    final String? tokenType = rawParams.remove('token_type') as String?;
    if (accessToken == null || tokenType == null) {
      throw OAuth2InvalidDataException(
        'Missing one or both "access_token" "token_type" fields',
        json,
      );
    }

    final String? refreshToken = rawParams.remove('refresh_token') as String?;
    final dynamic expiresInValue = rawParams.remove('expires_in');
    Duration? expiresIn;
    if (expiresInValue != null) {
      final int seconds;
      if (expiresInValue is String) {
        seconds = int.parse(expiresInValue);
      } else if (expiresInValue is double) {
        // Some servers serialize integers as JSON floats (e.g. 3600.0).
        seconds = expiresInValue.toInt();
      } else {
        seconds = expiresInValue as int;
      }
      expiresIn = Duration(seconds: seconds);
    }
    final Iterable<OAuth2Scope>? scopes = (rawParams.remove('scope') as String?)
        ?.split(scopesGlue);

    return OAuth2TokenGrantResult(
      accessToken: accessToken,
      tokenType: tokenType,
      refreshToken: refreshToken,
      expiresIn: expiresIn,
      scopes: scopes,
      customParameters: rawParams.cast<String, String>(),
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
