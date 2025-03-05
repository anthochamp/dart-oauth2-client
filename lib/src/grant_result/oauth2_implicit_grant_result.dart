// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:ac_dart_essentials/ac_dart_essentials.dart';

import '../oauth2_typedefs.dart';
import 'oauth2_token_grant_result.dart';

// https://www.rfc-editor.org/rfc/rfc6749#section-4.2.2
class OAuth2ImplicitGrantResult {
  /// The access token issued by the authorization server.
  final String accessToken;

  /// The type of the token issued as described in Section 7.1.
  // https://www.rfc-editor.org/rfc/rfc6749#section-7.1
  final String tokenType;

  /// The lifetime in seconds of the access token.  For
  /// example, the value "3600" denotes that the access token will
  /// expire in one hour from the time the response was generated.
  final Duration? expiresIn;

  /// The scopes of the access token as described by Section 3.3.
  final Iterable<OAuth2Scope>? scopes;

  /// Additional customParameters
  final OAuth2Parameters customParameters;

  const OAuth2ImplicitGrantResult({
    required this.accessToken,
    required this.tokenType,
    this.expiresIn,
    this.scopes,
    this.customParameters = const {},
  });

  factory OAuth2ImplicitGrantResult.fromJson(
    JsonObject json, {
    required String scopesGlue,
  }) {
    final tokenGrantResult = OAuth2TokenGrantResult.fromJson(
      json,
      scopesGlue: scopesGlue,
    );

    return OAuth2ImplicitGrantResult(
      accessToken: tokenGrantResult.accessToken,
      tokenType: tokenGrantResult.tokenType,
      expiresIn: tokenGrantResult.expiresIn,
      scopes: tokenGrantResult.scopes,
    );
  }

  JsonObject toJson({required String scopesGlue}) => OAuth2TokenGrantResult(
    accessToken: accessToken,
    tokenType: tokenType,
    expiresIn: expiresIn,
    scopes: scopes,
    customParameters: customParameters,
  ).toJson(scopesGlue: scopesGlue);
}
