// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:ac_oauth2_client/src/oauth2_http_response.dart';

abstract class OAuth2HttpRequestHandler {
  Future<OAuth2HttpResponse> post(
    Uri url,
    Map<String, String> headers,
    Map<String, String> formData,
  );
}
