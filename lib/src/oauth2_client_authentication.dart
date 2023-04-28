// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth2_client_authentication.freezed.dart';

@freezed
class OAuth2ClientAuthentication with _$OAuth2ClientAuthentication {
  const factory OAuth2ClientAuthentication.secret({
    required String secret,
  }) = OAuth2ClientAuthenticationSecret;

  const factory OAuth2ClientAuthentication.password({
    required String password,
  }) = OAuth2ClientAuthenticationPassword;
}
