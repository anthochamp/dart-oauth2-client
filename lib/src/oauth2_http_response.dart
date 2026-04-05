// SPDX-FileCopyrightText: © 2023 - 2026 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:meta/meta.dart';

@immutable
class OAuth2HttpResponse {
  final int status;
  final Map<String, String>? formData;

  const OAuth2HttpResponse({required this.status, this.formData});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OAuth2HttpResponse &&
          runtimeType == other.runtimeType &&
          status == other.status &&
          formData == other.formData;

  @override
  int get hashCode => Object.hash(status, formData);
}
