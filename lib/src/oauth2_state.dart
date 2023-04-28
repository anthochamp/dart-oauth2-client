// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

typedef OAuth2StateValue = String;

class OAuth2State {
  static const kDefaultRandomStateMinLength = 30;
  static const kDefaultRandomStateMaxLength = 50;
  static const kDefaultRandomStateAllowedChars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';

  final OAuth2StateValue value;

  const OAuth2State(this.value);

  factory OAuth2State.random({
    Random? random,
    String allowedChars = kDefaultRandomStateAllowedChars,
    int minLength = kDefaultRandomStateMinLength,
    int maxLength = kDefaultRandomStateMaxLength,
  }) {
    assert(allowedChars.isNotEmpty);
    assert(maxLength > 0);
    assert(minLength <= maxLength);

    final random_ = random ?? Random();

    final randomLength = minLength + random_.nextInt(maxLength - minLength);

    final randomCodePoints = Iterable.generate(randomLength, (_) {
      final index = random_.nextInt(allowedChars.length);

      return allowedChars.codeUnitAt(index);
    });

    return OAuth2State(String.fromCharCodes(randomCodePoints));
  }
}
