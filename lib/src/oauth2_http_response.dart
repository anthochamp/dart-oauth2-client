// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class OAuth2HttpResponse {
  final int status;
  final String? statusText;
  final Map<String, String>? formData;

  OAuth2HttpResponse({
    required this.status,
    this.statusText,
    this.formData,
  });
}
