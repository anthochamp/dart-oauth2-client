# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.4.1] - 2026-04-05

### Added

- `example/example.dart` demonstrating authorization code and implicit grant URL composition,
  CSRF state generation, and the client credentials grant pattern.

### Security

- `OAuth2State.random()` now uses `Random.secure()` instead of `Random()`, preventing CSRF state
  prediction attacks (RFC 6749 §10.12).

### Fixed

- `OAuth2TokenGrantResult.fromJson` now handles `expires_in` values of type `double` (e.g.
  `3600.0`) without throwing a `TypeError`.

### Changed

- `OAuth2HttpResponse` is now `@immutable` and implements `==` and `hashCode`.

## 0.4.0

- Update SDK environment requirement (>= 3.7.0 && <4.0.0)
- Upgrade freezed/freezed_annotation packages

## 0.3.0

- Upgrade json_serializable/json_annotation packages
- Upgrade freezed/freezed_annotation packages
- Upgrade ac_lints package to 0.4.0

## 0.2.2

- Upgrade json_serializable/json_annotation packages
- Upgrade freezed/freezed_annotation packages (lint generated files)
- Upgrade ac_lints package to 0.3.0

## 0.2.1

- Update LICENSE's copyright to include contributors and use SPDX file header
- Widen SDK environment requirement to include Dart 3 versions
- Upgrade ac_lints package to 0.2.0
- Minor fix

## 0.2.0

- *BREAKING CHANGE*: remove need to specify statusText in OAuth2HttpResponse
- add OAuth2HttpException instead of using dart:io HttpException

## 0.1.0

- Initial release
