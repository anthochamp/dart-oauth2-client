// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:ac_oauth2_client/src/oauth2_http_response.dart';

abstract class OAuth2HttpRequestHandler {
  Future<OAuth2HttpResponse> post(
    Uri url,
    Map<String, String> headers,
    Map<String, String> formData,
  );
}
