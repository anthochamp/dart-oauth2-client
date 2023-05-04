// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class OAuth2HttpException implements Exception {
  final int status;
  final Uri url;

  OAuth2HttpException({
    required this.status,
    required this.url,
  });

  @override
  String toString() => 'OAuth2HttpException: status=$status, url=$url';
}
