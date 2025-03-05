// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth2_client_authentication.freezed.dart';

@freezed
class OAuth2ClientAuthentication with _$OAuth2ClientAuthentication {
  const factory OAuth2ClientAuthentication.secret({required String secret}) =
      OAuth2ClientAuthenticationSecret;

  const factory OAuth2ClientAuthentication.password({
    required String password,
  }) = OAuth2ClientAuthenticationPassword;
}
