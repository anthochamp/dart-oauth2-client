// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'dart:async';
import 'dart:convert';

import 'exceptions/oauth2_http_exception.dart';
import 'exceptions/oauth2_invalid_data_exception.dart';
import 'exceptions/oauth2_protocol_error_exception.dart';
import 'exceptions/oauth2_state_mismatch_exception.dart';
import 'grant_result/oauth2_authorization_code_grant_result.dart';
import 'grant_result/oauth2_implicit_grant_result.dart';
import 'grant_result/oauth2_token_grant_result.dart';
import 'oauth2_client_authentication.dart';
import 'oauth2_client_credentials.dart';
import 'oauth2_http_request_handler.dart';
import 'oauth2_http_response.dart';
import 'oauth2_protocol_error.dart';
import 'oauth2_state.dart';
import 'oauth2_typedefs.dart';

class OAuth2Client {
  static const kDefaultScopesGlue = ' ';
  static const kDefaultResponseTypesGlue = ' ';

  // https://www.rfc-editor.org/rfc/rfc6749#section-4.1.1
  static Uri composeAuthorizationCodeGrantUrl({
    required Uri authorizationEndpoint,
    required OAuth2ClientCredentialsIdentifier clientCredentialsIdentifier,
    OAuth2State? state,
    Uri? redirectUri,
    Iterable<OAuth2Scope>? scopes,
    OAuth2Parameters customParameters = const {},
    bool ignoreUnsecureCredentials = true,
    String responseTypesGlue = kDefaultResponseTypesGlue,
    String scopesGlue = kDefaultScopesGlue,
  }) => _composeAuthorizationUrl(
    authorizationEndpoint: authorizationEndpoint,
    clientCredentialsIdentifier: clientCredentialsIdentifier,
    state: state,
    responseTypes: ['code'],
    responseTypesGlue: responseTypesGlue,
    redirectUri: redirectUri,
    scopes: scopes,
    scopesGlue: scopesGlue,
    customParameters: customParameters,
    ignoreUnsecureCredentials: ignoreUnsecureCredentials,
  );

  // https://www.rfc-editor.org/rfc/rfc6749#section-4.1.1
  static OAuth2AuthorizationCodeGrantResult
  parseAuthorizationCodeGrantRedirectionUri({
    required Uri redirectionUri,
    required OAuth2State? state,
  }) {
    final result = _parseAuthorizationRedirectionUri(
      redirectionUri: redirectionUri,
      state: state,
    );

    return OAuth2AuthorizationCodeGrantResult.fromJson(result);
  }

  // https://www.rfc-editor.org/rfc/rfc6749#section-4.1.3
  // https://www.rfc-editor.org/rfc/rfc6749#section-4.1.4
  static Future<OAuth2TokenGrantResult> authorizationCodeTokenGrant({
    required OAuth2HttpRequestHandler requestHandler,
    required Uri tokenEndpoint,
    required OAuth2ClientCredentials clientCredentials,
    required OAuth2AuthorizationCode authorizationCode,
    required Uri? originalRedirectUri,
    OAuth2Parameters customParameters = const {},
    String scopesGlue = kDefaultScopesGlue,
  }) => _tokenRequest(
    requestHandler: requestHandler,
    tokenEndpoint: tokenEndpoint,
    clientCredentials: clientCredentials,
    grantType: 'authorization_code',
    parameters: {
      ...customParameters,
      'code': authorizationCode,
      if (originalRedirectUri != null)
        'redirect_uri': originalRedirectUri.toString(),
    },
    scopesGlue: scopesGlue,
  );

  // https://www.rfc-editor.org/rfc/rfc6749#section-4.2.1
  static Uri composeImplicitGrantUrl({
    required Uri authorizationEndpoint,
    required OAuth2ClientCredentialsIdentifier clientCredentialsIdentifier,
    OAuth2State? state,
    Uri? redirectUri,
    Iterable<OAuth2Scope>? scopes,
    OAuth2Parameters customParameters = const {},
    bool ignoreUnsecureCredentials = true,
    String responseTypesGlue = kDefaultResponseTypesGlue,
    String scopesGlue = kDefaultScopesGlue,
  }) => _composeAuthorizationUrl(
    authorizationEndpoint: authorizationEndpoint,
    clientCredentialsIdentifier: clientCredentialsIdentifier,
    state: state,
    responseTypes: ['token'],
    responseTypesGlue: responseTypesGlue,
    redirectUri: redirectUri,
    scopes: scopes,
    scopesGlue: scopesGlue,
    customParameters: customParameters,
    ignoreUnsecureCredentials: ignoreUnsecureCredentials,
  );

  static OAuth2ImplicitGrantResult parseImplicitGrantRedirectionUri({
    required Uri redirectionUri,
    required OAuth2State? state,
    String scopesGlue = kDefaultScopesGlue,
  }) {
    final result = _parseAuthorizationRedirectionUri(
      redirectionUri: redirectionUri,
      state: state,
    );

    return OAuth2ImplicitGrantResult.fromJson(result, scopesGlue: scopesGlue);
  }

  // https://www.rfc-editor.org/rfc/rfc6749#section-4.3
  static Future<OAuth2TokenGrantResult> resourceOwnerPasswordCredentialsGrant({
    required OAuth2HttpRequestHandler requestHandler,
    required Uri tokenEndpoint,
    required OAuth2ClientCredentialsUserPass clientCredentialsUserPass,
    Iterable<OAuth2Scope>? scopes,
    String scopesGlue = kDefaultScopesGlue,
    OAuth2Parameters customParameters = const {},
  }) => _tokenRequest(
    requestHandler: requestHandler,
    tokenEndpoint: tokenEndpoint,
    clientCredentials: clientCredentialsUserPass,
    grantType: 'password',
    parameters: {
      ...customParameters,
      if (scopes != null) 'scope': scopes.join(scopesGlue),
    },
    scopesGlue: scopesGlue,
  );

  // https://www.rfc-editor.org/rfc/rfc6749#section-4.4
  static Future<OAuth2TokenGrantResult> clientCredentialsGrant({
    required OAuth2HttpRequestHandler requestHandler,
    required Uri tokenEndpoint,
    required OAuth2ClientCredentials clientCredentials,
    Iterable<OAuth2Scope>? scopes,
    String scopesGlue = kDefaultScopesGlue,
    OAuth2Parameters customParameters = const {},
  }) => _tokenRequest(
    requestHandler: requestHandler,
    tokenEndpoint: tokenEndpoint,
    clientCredentials: clientCredentials,
    grantType: 'client_credentials',
    parameters: {
      ...customParameters,
      if (scopes != null) 'scope': scopes.join(scopesGlue),
    },
    scopesGlue: scopesGlue,
  );

  // https://www.rfc-editor.org/rfc/rfc6749#section-4.5
  static Future<OAuth2TokenGrantResult> extensionGrant({
    required OAuth2HttpRequestHandler requestHandler,
    required Uri tokenEndpoint,
    required OAuth2ClientCredentials? clientCredentials,
    required Uri grantType,
    OAuth2Parameters customParameters = const {},
    String scopesGlue = kDefaultScopesGlue,
  }) => _tokenRequest(
    requestHandler: requestHandler,
    tokenEndpoint: tokenEndpoint,
    clientCredentials: clientCredentials,
    grantType: grantType.toString(),
    parameters: customParameters,
    scopesGlue: scopesGlue,
  );

  // https://www.rfc-editor.org/rfc/rfc6749#section-6
  static Future<OAuth2TokenGrantResult> refreshToken({
    required OAuth2HttpRequestHandler requestHandler,
    required Uri tokenEndpoint,
    required OAuth2ClientCredentials? clientCredentials,
    required String refreshToken,
    Iterable<OAuth2Scope>? scopes,
    String scopesGlue = kDefaultScopesGlue,
    OAuth2Parameters customParameters = const {},
  }) => _tokenRequest(
    requestHandler: requestHandler,
    tokenEndpoint: tokenEndpoint,
    clientCredentials: clientCredentials,
    grantType: 'refresh_token',
    parameters: {
      ...customParameters,
      'refresh_token': refreshToken,
      if (scopes != null) 'scope': scopes.join(scopesGlue),
    },
    scopesGlue: scopesGlue,
  );

  // https://www.rfc-editor.org/rfc/rfc7009
  static Future<void> revokeToken({
    required OAuth2HttpRequestHandler requestHandler,
    required Uri revocationEndpoint,
    required OAuth2ClientCredentials? clientCredentials,
    required String token,
    OAuth2TokenType? tokenTypeHint,
    OAuth2Parameters customParameters = const {},
  }) async {
    await _httpRequest(
      requestHandler: requestHandler,
      requestEndpoint: revocationEndpoint,
      clientCredentials: clientCredentials,
      parameters: {
        ...customParameters,
        'token': token,
        if (tokenTypeHint != null)
          'token_type_hint': tokenTypeHint == OAuth2TokenType.accessToken
              ? 'access_token'
              : 'refresh_token',
      },
    );
  }

  static Future<OAuth2TokenGrantResult> _tokenRequest({
    required OAuth2HttpRequestHandler requestHandler,
    required Uri tokenEndpoint,
    required OAuth2ClientCredentials? clientCredentials,
    required String grantType,
    required OAuth2Parameters parameters,
    required String scopesGlue,
  }) async {
    final response = await _httpRequest(
      requestHandler: requestHandler,
      requestEndpoint: tokenEndpoint,
      clientCredentials: clientCredentials,
      parameters: {...parameters, 'grant_type': grantType},
    );

    if (response.formData == null) {
      throw OAuth2InvalidDataException(
        'No payload in response from "$tokenEndpoint"',
        response,
      );
    }

    return OAuth2TokenGrantResult.fromJson(
      response.formData!,
      scopesGlue: scopesGlue,
    );
  }

  static Future<OAuth2HttpResponse> _httpRequest({
    required OAuth2HttpRequestHandler requestHandler,
    required Uri requestEndpoint,
    required OAuth2ClientCredentials? clientCredentials,
    required OAuth2Parameters parameters,
  }) async {
    final httpHeaders = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': 'application/x-www-form-urlencoded',
    };

    if (clientCredentials is OAuth2ClientCredentialsIdentifier) {
      if (clientCredentials.authentication
          is OAuth2ClientAuthenticationPassword) {
        final encodedClientId = Uri.encodeComponent(
          clientCredentials.identifier,
        );
        final encodedPassword = Uri.encodeComponent(
          (clientCredentials.authentication
                  as OAuth2ClientAuthenticationPassword)
              .password,
        );

        httpHeaders['Authorization'] =
            'Basic ${base64Encode('$encodedClientId:$encodedPassword'.codeUnits)}';
      }
    }

    final response = await requestHandler.post(requestEndpoint, httpHeaders, {
      ...clientCredentials?.composeParameters(
            ignoreUnsecureCredentials: false,
          ) ??
          {},
      ...parameters,
    });

    // ignore: no-magic-number
    if (response.status < 200 || response.status >= 300) {
      OAuth2ProtocolError? protocolError;
      try {
        protocolError = OAuth2ProtocolError.fromJson(response.formData!);
      } catch (_) {}

      if (protocolError == null) {
        throw OAuth2HttpException(
          status: response.status,
          url: requestEndpoint,
        );
      }

      throw OAuth2ProtocolErrorException(
        status: response.status,
        url: requestEndpoint,
        protocolError: protocolError,
      );
    }

    return response;
  }

  // https://www.rfc-editor.org/rfc/rfc6749#section-4.1.2
  static Uri _composeAuthorizationUrl({
    required Uri authorizationEndpoint,
    required OAuth2ClientCredentialsIdentifier clientCredentialsIdentifier,
    required OAuth2State? state,
    required Iterable<OAuth2ResponseType> responseTypes,
    required String responseTypesGlue,
    required Uri? redirectUri,
    required Iterable<OAuth2Scope>? scopes,
    required String scopesGlue,
    required OAuth2Parameters customParameters,
    required bool ignoreUnsecureCredentials,
  }) => authorizationEndpoint.replace(
    queryParameters: <String, String?>{
      ...authorizationEndpoint.queryParameters,
      ...customParameters,
      ...clientCredentialsIdentifier.composeParameters(
        ignoreUnsecureCredentials: ignoreUnsecureCredentials,
      ),
      'response_type': responseTypes.join(responseTypesGlue),
      if (redirectUri != null) 'redirect_uri': redirectUri.toString(),
      if (scopes != null) 'scope': scopes.join(scopesGlue),
      if (state != null) 'state': state.value,
    },
  );

  // https://www.rfc-editor.org/rfc/rfc6749#section-4.2.2
  static OAuth2Parameters _parseAuthorizationRedirectionUri({
    required Uri redirectionUri,
    required OAuth2State? state,
  }) {
    final OAuth2Parameters parameters = {}
      ..addAll(redirectionUri.queryParameters);

    final receivedState = parameters.remove('state');
    if (receivedState != state?.value) {
      throw OAuth2StateMismatchException();
    }

    return parameters;
  }
}
