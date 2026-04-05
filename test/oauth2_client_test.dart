// SPDX-FileCopyrightText: © 2023 - 2026 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:test/test.dart';

import 'package:ac_oauth2_client/ac_oauth2_client.dart';

void main() {
  group('OAuth2TokenGrantResult', () {
    const scopesGlue = ' ';

    test('parses minimal valid JSON', () {
      final result = OAuth2TokenGrantResult.fromJson({
        'access_token': 'tok',
        'token_type': 'Bearer',
      }, scopesGlue: scopesGlue);
      expect(result.accessToken, equals('tok'));
      expect(result.tokenType, equals('Bearer'));
      expect(result.expiresIn, isNull);
      expect(result.refreshToken, isNull);
      expect(result.scopes, isNull);
      expect(result.customParameters, isEmpty);
    });

    test('parses expires_in as int', () {
      final result = OAuth2TokenGrantResult.fromJson({
        'access_token': 'tok',
        'token_type': 'Bearer',
        'expires_in': 3600,
      }, scopesGlue: scopesGlue);
      expect(result.expiresIn, equals(const Duration(seconds: 3600)));
    });

    test('parses expires_in as String', () {
      final result = OAuth2TokenGrantResult.fromJson({
        'access_token': 'tok',
        'token_type': 'Bearer',
        'expires_in': '7200',
      }, scopesGlue: scopesGlue);
      expect(result.expiresIn, equals(const Duration(seconds: 7200)));
    });

    test('parses expires_in as double (e.g. 3600.0)', () {
      final result = OAuth2TokenGrantResult.fromJson({
        'access_token': 'tok',
        'token_type': 'Bearer',
        'expires_in': 3600.0,
      }, scopesGlue: scopesGlue);
      expect(result.expiresIn, equals(const Duration(seconds: 3600)));
    });

    test('parses refresh_token and scopes', () {
      final result = OAuth2TokenGrantResult.fromJson({
        'access_token': 'tok',
        'token_type': 'Bearer',
        'refresh_token': 'rtok',
        'scope': 'read write',
      }, scopesGlue: scopesGlue);
      expect(result.refreshToken, equals('rtok'));
      expect(result.scopes, containsAll(['read', 'write']));
    });

    test('collects unknown fields into customParameters', () {
      final result = OAuth2TokenGrantResult.fromJson({
        'access_token': 'tok',
        'token_type': 'Bearer',
        'custom_field': 'hello',
      }, scopesGlue: scopesGlue);
      expect(result.customParameters['custom_field'], equals('hello'));
    });

    test('throws OAuth2InvalidDataException for missing access_token', () {
      expect(
        () => OAuth2TokenGrantResult.fromJson({
          'token_type': 'Bearer',
        }, scopesGlue: scopesGlue),
        throwsA(isA<OAuth2InvalidDataException>()),
      );
    });

    test('round-trips via toJson', () {
      const original = OAuth2TokenGrantResult(
        accessToken: 'tok',
        tokenType: 'Bearer',
        expiresIn: Duration(seconds: 3600),
        refreshToken: 'rtok',
        scopes: ['read', 'write'],
      );
      final json = original.toJson(scopesGlue: scopesGlue);
      final restored = OAuth2TokenGrantResult.fromJson(
        json.map(MapEntry.new).cast<String, dynamic>(),
        scopesGlue: scopesGlue,
      );
      expect(restored.accessToken, equals(original.accessToken));
      expect(restored.tokenType, equals(original.tokenType));
      expect(restored.expiresIn, equals(original.expiresIn));
      expect(restored.refreshToken, equals(original.refreshToken));
    });
  });

  group('OAuth2Client URL composition', () {
    final authEndpoint = Uri.parse('https://example.com/authorize');

    test('composeAuthorizationCodeGrantUrl includes code response_type', () {
      final url = OAuth2Client.composeAuthorizationCodeGrantUrl(
        authorizationEndpoint: authEndpoint,
        clientCredentialsIdentifier: const OAuth2ClientCredentialsIdentifier(
          identifier: 'my-client-id',
        ),
      );
      expect(url.queryParameters['response_type'], equals('code'));
      expect(url.queryParameters['client_id'], equals('my-client-id'));
    });

    test('composeAuthorizationCodeGrantUrl includes state when provided', () {
      const state = OAuth2State('test-state');
      final url = OAuth2Client.composeAuthorizationCodeGrantUrl(
        authorizationEndpoint: authEndpoint,
        clientCredentialsIdentifier: const OAuth2ClientCredentialsIdentifier(
          identifier: 'client',
        ),
        state: state,
      );
      expect(url.queryParameters['state'], equals('test-state'));
    });

    test(
      'parseAuthorizationCodeGrantRedirectionUri throws on state mismatch',
      () {
        const expected = OAuth2State('expected');
        final redirectUri = Uri.parse(
          'https://app.example.com/cb?code=abc&state=wrong',
        );
        expect(
          () => OAuth2Client.parseAuthorizationCodeGrantRedirectionUri(
            redirectionUri: redirectUri,
            state: expected,
          ),

          throwsA(isA<OAuth2StateMismatchException>()),
        );
      },
    );

    test('composeImplicitGrantUrl includes token response_type', () {
      final url = OAuth2Client.composeImplicitGrantUrl(
        authorizationEndpoint: authEndpoint,
        clientCredentialsIdentifier: const OAuth2ClientCredentialsIdentifier(
          identifier: 'client',
        ),
      );
      expect(url.queryParameters['response_type'], equals('token'));
    });
  });
}
