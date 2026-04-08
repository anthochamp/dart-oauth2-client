// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

// https://www.rfc-editor.org/rfc/rfc6749#section-8.4
typedef OAuth2ResponseType = String;

typedef OAuth2AuthorizationCode = String;

// https://www.rfc-editor.org/rfc/rfc6749#section-3.3
typedef OAuth2Scope = String;

typedef OAuth2Parameters = Map<String, String>;

enum OAuth2TokenType { accessToken, refreshToken }
