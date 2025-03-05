// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

class OAuth2HttpResponse {
  final int status;
  final Map<String, String>? formData;

  OAuth2HttpResponse({required this.status, this.formData});
}
