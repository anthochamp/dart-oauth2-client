// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:ac_dart_essentials/ac_dart_essentials.dart';

// https://www.rfc-editor.org/rfc/rfc6749#section-8.4
typedef OAuth2ResponseType = String;

typedef OAuth2AuthorizationCode = String;

// https://www.rfc-editor.org/rfc/rfc6749#section-3.3
typedef OAuth2Scope = String;

typedef OAuth2Parameters = UriQueryParameters;

enum OAuth2TokenType {
  accessToken,
  refreshToken,
}
