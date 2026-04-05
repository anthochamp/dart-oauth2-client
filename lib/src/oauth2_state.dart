// SPDX-FileCopyrightText: © 2023 - 2026 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'dart:math';

typedef OAuth2StateValue = String;

class OAuth2State {
  static const kDefaultRandomStateMinLength = 30;
  static const kDefaultRandomStateMaxLength = 50;
  static const kDefaultRandomStateAllowedChars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';

  final OAuth2StateValue value;

  const OAuth2State(this.value);

  /// Generates a cryptographically secure random state value.
  ///
  /// The state parameter is used as a CSRF protection token per RFC 6749 §10.12.
  /// A cryptographically secure PRNG ([Random.secure]) is always used to prevent
  /// an attacker from forging state values and bypassing CSRF protection.
  ///
  /// [random] may be supplied in tests to override the source of randomness.
  factory OAuth2State.random({
    Random? random,
    String allowedChars = kDefaultRandomStateAllowedChars,
    int minLength = kDefaultRandomStateMinLength,
    int maxLength = kDefaultRandomStateMaxLength,
  }) {
    assert(allowedChars.isNotEmpty);
    assert(maxLength > 0);
    assert(minLength <= maxLength);

    final random_ = random ?? Random.secure();

    final randomLength = minLength + random_.nextInt(maxLength - minLength + 1);

    final randomCodePoints = Iterable.generate(randomLength, (_) {
      final index = random_.nextInt(allowedChars.length);

      return allowedChars.codeUnitAt(index);
    });

    return OAuth2State(String.fromCharCodes(randomCodePoints));
  }
}
