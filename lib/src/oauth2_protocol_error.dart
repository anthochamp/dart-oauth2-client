// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:ac_dart_essentials/ac_dart_essentials.dart';
import 'package:json_annotation/json_annotation.dart';

part 'oauth2_protocol_error.g.dart';

// https://www.rfc-editor.org/rfc/rfc6749#section-4.1.2.1
enum OAuth2AuthorizationCodeGrantErrorCode {
  /// The request is missing a required parameter, includes an
  /// invalid parameter value, includes a parameter more than
  /// once, or is otherwise malformed.
  invalidRequest,

  /// The client is not authorized to request an authorization
  /// code using this method.
  unauthorizedClient,

  /// The resource owner or authorization server denied the
  /// request.
  accessDenied,

  /// The authorization server does not support obtaining an
  /// authorization code using this method.
  unsupportedResponseType,

  /// The requested scopes is invalid, unknown, or malformed.
  invalidScope,

  /// The authorization server encountered an unexpected
  /// condition that prevented it from fulfilling the request.
  /// (This error code is needed because a 500 Internal Server
  /// Error HTTP status code cannot be returned to the client
  /// via an HTTP redirect.)
  serverError,

  /// The authorization server is currently unable to handle
  /// the request due to a temporary overloading or maintenance
  /// of the server.  (This error code is needed because a 503
  /// Service Unavailable HTTP status code cannot be returned
  /// to the client via an HTTP redirect.)
  temporarilyUnavailable,
}

// https://www.rfc-editor.org/rfc/rfc6749#section-4.2.2.1
typedef OAuth2ImplicitGrantErrorCode = OAuth2AuthorizationCodeGrantErrorCode;

// https://www.rfc-editor.org/rfc/rfc6749#section-5.2
enum OAuth2TokenGrantErrorCode {
  /// The request is missing a required parameter, includes an
  /// unsupported parameter value (other than grant type),
  /// repeats a parameter, includes multiple credentials,
  /// utilizes more than one mechanism for authenticating the
  /// client, or is otherwise malformed.
  invalidRequest,

  /// Client authentication failed (e.g., unknown client, no
  /// client authentication included, or unsupported
  /// authentication method).  The authorization server MAY
  /// return an HTTP 401 (Unauthorized) status code to indicate
  /// which HTTP authentication schemes are supported.  If the
  /// client attempted to authenticate via the "Authorization"
  /// request header field, the authorization server MUST
  /// respond with an HTTP 401 (Unauthorized) status code and
  /// include the "WWW-Authenticate" response header field
  /// matching the authentication scheme used by the client.
  invalidClient,

  /// The provided authorization grant (e.g., authorization
  /// code, resource owner credentials) or refresh token is
  /// invalid, expired, revoked, does not match the redirection
  /// URI used in the authorization request, or was issued to
  /// another client.
  invalidGrant,

  /// The authenticated client is not authorized to use this
  /// authorization grant type.
  unauthorizedClient,

  /// The authorization grant type is not supported by the
  /// authorization server.
  unsupportedGrantType,

  /// The requested scopes is invalid, unknown, malformed, or
  /// exceeds the scopes granted by the resource owner.
  invalidScope,
}

// https://www.rfc-editor.org/rfc/rfc7009#section-2.2.1
enum OAuth2TokenRevocationErrorCode {
  /// The request is missing a required parameter, includes an
  /// unsupported parameter value (other than grant type),
  /// repeats a parameter, includes multiple credentials,
  /// utilizes more than one mechanism for authenticating the
  /// client, or is otherwise malformed.
  invalidRequest,

  /// Client authentication failed (e.g., unknown client, no
  /// client authentication included, or unsupported
  /// authentication method).  The authorization server MAY
  /// return an HTTP 401 (Unauthorized) status code to indicate
  /// which HTTP authentication schemes are supported.  If the
  /// client attempted to authenticate via the "Authorization"
  /// request header field, the authorization server MUST
  /// respond with an HTTP 401 (Unauthorized) status code and
  /// include the "WWW-Authenticate" response header field
  /// matching the authentication scheme used by the client.
  invalidClient,

  /// The provided authorization grant (e.g., authorization
  /// code, resource owner credentials) or refresh token is
  /// invalid, expired, revoked, does not match the redirection
  /// URI used in the authorization request, or was issued to
  /// another client.
  invalidGrant,

  /// The authenticated client is not authorized to use this
  /// authorization grant type.
  unauthorizedClient,

  /// The authorization grant type is not supported by the
  /// authorization server.
  unsupportedGrantType,

  /// The requested scopes is invalid, unknown, malformed, or
  /// exceeds the scopes granted by the resource owner.
  invalidScope,

  /// The authorization server does not support
  /// the revocation of the presented token type.  That is, the
  /// client tried to revoke an access token on a server not
  /// supporting this feature.
  unsupportedTokenType,
}

@JsonSerializable()
class OAuth2ProtocolError {
  /// A single ASCII error code
  final String error;

  /// Human-readable ASCII text providing
  /// additional information, used to assist the client developer in
  /// understanding the error that occurred.
  final String? errorDescription;

  /// A URI identifying a human-readable web page with
  /// information about the error, used to provide the client
  /// developer with additional information about the error.
  final Uri? errorUri;

  // ignore: invalid_annotation_target
  const OAuth2ProtocolError({
    required this.error,
    this.errorDescription,
    this.errorUri,
  });

  factory OAuth2ProtocolError.fromJson(JsonObject json) =>
      _$OAuth2ProtocolErrorFromJson(json);

  JsonObject toJson() => _$OAuth2ProtocolErrorToJson(this);

  @override
  String toString() =>
      '$error: $errorDescription ${errorUri == null ? '' : '($errorUri)'}';
}
