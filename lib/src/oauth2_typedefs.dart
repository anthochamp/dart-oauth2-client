import 'package:anthochamp_dart_essentials/dart_essentials.dart';

// https://www.rfc-editor.org/rfc/rfc6749#section-8.4
typedef OAuth2ResponseType = String;

typedef OAuth2AuthorizationCode = String;

// https://www.rfc-editor.org/rfc/rfc6749#section-3.3
typedef OAuth2Scope = String;

typedef OAuth2Parameters = UriQueryParameters;

enum OAuth2TokenType {
  accessToken,
  refreshToken,
}
