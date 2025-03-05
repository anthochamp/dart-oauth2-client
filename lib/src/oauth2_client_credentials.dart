// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oauth2_client_authentication.dart';
import 'oauth2_typedefs.dart';

part 'oauth2_client_credentials.freezed.dart';

@freezed
sealed class OAuth2ClientCredentials with _$OAuth2ClientCredentials {
  const OAuth2ClientCredentials._();

  const factory OAuth2ClientCredentials.identifier({
    required String identifier,
    OAuth2ClientAuthentication? authentication,
  }) = OAuth2ClientCredentialsIdentifier;

  const factory OAuth2ClientCredentials.username({
    required String username,
    required OAuth2ClientAuthenticationPassword authenticationPassword,
  }) = OAuth2ClientCredentialsUserPass;

  OAuth2Parameters composeParameters({
    required bool ignoreUnsecureCredentials,
  }) {
    return switch (this) {
      OAuth2ClientCredentialsIdentifier(
        :final identifier,
        :final authentication,
      ) =>
        {
          'client_id': identifier,
          if (!ignoreUnsecureCredentials)
            ...authentication != null
                ? switch (authentication) {
                  OAuth2ClientAuthenticationSecret(:final secret) => {
                    'client_secret': secret,
                  },
                  OAuth2ClientAuthenticationPassword(:final password) => {
                    'password': password,
                  },
                }
                : {},
        },
      OAuth2ClientCredentialsUserPass(
        :final username,
        :final authenticationPassword,
      ) =>
        ignoreUnsecureCredentials
            ? {}
            : {
              'username': username,
              'password': authenticationPassword.password,
            },
    };
  }
}
