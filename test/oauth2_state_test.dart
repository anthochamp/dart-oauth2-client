// SPDX-FileCopyrightText: © 2023 - 2026 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'dart:math';

import 'package:test/test.dart';

import 'package:ac_oauth2_client/ac_oauth2_client.dart';

void main() {
  group('OAuth2State', () {
    test('constant constructor preserves value', () {
      const state = OAuth2State('my-state-value');
      expect(state.value, equals('my-state-value'));
    });

    group('random()', () {
      test('length is within [minLength, maxLength]', () {
        for (var i = 0; i < 50; i++) {
          final state = OAuth2State.random(minLength: 10, maxLength: 20);
          expect(state.value.length, inInclusiveRange(10, 20));
        }
      });

      test('value contains only allowed characters', () {
        final allowed = RegExp(r'^[A-Za-z0-9]+$'); // default allowedChars
        for (var i = 0; i < 50; i++) {
          final state = OAuth2State.random();
          expect(allowed.hasMatch(state.value), isTrue);
        }
      });

      test('consecutive calls produce different values (smoke test)', () {
        final values = List.generate(20, (_) => OAuth2State.random().value);
        // At least some values must differ for a secure RNG
        expect(values.toSet().length, greaterThan(1));
      });

      test('respects custom allowedChars', () {
        final state = OAuth2State.random(
          allowedChars: 'abc',
          minLength: 20,
          maxLength: 20,
        );
        expect(RegExp(r'^[abc]+$').hasMatch(state.value), isTrue);
        expect(state.value.length, equals(20));
      });

      test('accepts injected Random for deterministic tests', () {
        // Seeded Random for reproducibility in unit tests
        final r = Random(42);
        final s1 = OAuth2State.random(random: r);
        expect(s1.value, isNotEmpty);
      });
    });
  });
}
