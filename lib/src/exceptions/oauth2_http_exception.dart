// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

class OAuth2HttpException implements Exception {
  final int status;
  final Uri url;

  OAuth2HttpException({required this.status, required this.url});

  @override
  String toString() => 'OAuth2HttpException: status=$status, url=$url';
}
