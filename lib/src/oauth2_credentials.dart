import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oauth2_client/src/oauth2_typedefs.dart';

part 'oauth2_credentials.freezed.dart';

@freezed
class OAuth2ClientAuthentication with _$OAuth2ClientAuthentication {
  const factory OAuth2ClientAuthentication.secret({
    required String secret,
  }) = OAuth2ClientAuthenticationSecret;

  const factory OAuth2ClientAuthentication.password({
    required String password,
  }) = OAuth2ClientAuthenticationPassword;
}

@freezed
class OAuth2ClientCredentials with _$OAuth2ClientCredentials {
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
    return map(
      identifier: (identifier) => {
        'client_id': identifier.identifier,
        if (!ignoreUnsecureCredentials)
          ...identifier.authentication?.map(
                secret: (authenticationSecret) =>
                    {'client_secret': authenticationSecret.secret},
                password: (authenticationPassword) =>
                    {'password': authenticationPassword.password},
              ) ??
              {},
      },
      username: (username) => ignoreUnsecureCredentials
          ? {}
          : {
              'username': username.username,
              'password': username.authenticationPassword.password,
            },
    );
  }
}
