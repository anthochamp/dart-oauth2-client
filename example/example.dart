// SPDX-FileCopyrightText: © 2026 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

// ignore_for_file: avoid_print

import 'package:ac_oauth2_client/ac_oauth2_client.dart';

void main() {
  _authorizationCodeUrlExample();
  _implicitGrantUrlExample();
  _stateExample();
}

void _authorizationCodeUrlExample() {
  print('--- Authorization Code Grant URL ---');

  final state = OAuth2State.random();

  final url = OAuth2Client.composeAuthorizationCodeGrantUrl(
    authorizationEndpoint: Uri.parse(
      'https://auth.example.com/oauth2/authorize',
    ),
    clientCredentialsIdentifier: const OAuth2ClientCredentialsIdentifier(
      identifier: 'my-app-client-id',
    ),
    state: state,
    redirectUri: Uri.parse('https://myapp.example.com/callback'),
    scopes: const ['read', 'write'],
  );

  print('URL: $url');
  // Example output:
  // https://auth.example.com/oauth2/authorize
  //   ?response_type=code
  //   &client_id=my-app-client-id
  //   &redirect_uri=https%3A%2F%2Fmyapp.example.com%2Fcallback
  //   &scope=read+write
  //   &state=<random>
}

void _implicitGrantUrlExample() {
  print('\n--- Implicit Grant URL ---');

  final url = OAuth2Client.composeImplicitGrantUrl(
    authorizationEndpoint: Uri.parse(
      'https://auth.example.com/oauth2/authorize',
    ),
    clientCredentialsIdentifier: const OAuth2ClientCredentialsIdentifier(
      identifier: 'my-spa-client-id',
    ),
    redirectUri: Uri.parse('https://myapp.example.com/callback'),
    scopes: const ['read'],
  );

  print('URL: $url');
}

void _stateExample() {
  print('\n--- CSRF state token ---');

  final state = OAuth2State.random();
  print('Generated state value (length ${state.value.length}): ${state.value}');

  // In a real app:
  // 1. Store `state.value` in session before redirecting.
  // 2. After callback, call OAuth2Client.parseAuthorizationCodeGrantRedirectionUri
  //    and compare the returned state with the stored value.
}

// To use clientCredentialsGrant (requires a live token endpoint and an
// OAuth2HttpRequestHandler backed by an HTTP library such as ac_fetch):
//
// Future<void> clientCredentialsExample(
//   OAuth2HttpRequestHandler handler,
// ) async {
//   final result = await OAuth2Client.clientCredentialsGrant(
//     requestHandler: handler,
//     tokenEndpoint: Uri.parse('https://auth.example.com/oauth2/token'),
//     clientCredentials: const OAuth2ClientCredentialsIdentifier(
//       identifier: 'my-service-client-id',
//       authentication: OAuth2ClientAuthenticationSecret(
//         secret: 'my-client-secret',
//       ),
//     ),
//     scopes: ['api:read'],
//   );
//   print('Access token: ${result.accessToken}');
//   print('Token type:   ${result.tokenType}');
//   print('Expires in:   ${result.expiresIn}');
// }
