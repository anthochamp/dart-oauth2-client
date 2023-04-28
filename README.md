# Unopinionated OAuth 2.0 client

An unopinionated RFC-compliant OAuth 2.0 client which doesn't make assumption on anything.

## Features

What it implements :

- Authorization Code Grant ([RFC-6749 §4.1](https://datatracker.ietf.org/doc/html/rfc6749#section-4.1));
- Implicit Grant ([RFC-6749 §4.2](https://datatracker.ietf.org/doc/html/rfc6749#section-4.2));
- Resource Owner Password Credentials Grant ([RFC-6749 §4.3](https://datatracker.ietf.org/doc/html/rfc6749#section-4.3));
- Client Credentials Grant ([RFC-6749 §4.4](https://datatracker.ietf.org/doc/html/rfc6749#section-4.4));
- Extension Grants ([RFC-6749 §4.5](https://datatracker.ietf.org/doc/html/rfc6749#section-4.5));
- Access Token Refreshing ([RFC-6749 §6](https://datatracker.ietf.org/doc/html/rfc6749#section-6))
- Token Revocation ([RFC-7009](https://datatracker.ietf.org/doc/html/rfc7009))

What it will NOT implement :
- The actual HTTP requests to the server, although it gives you data to make requests and it transforms the responses.
- A way to present the web page to the user and retrieve the redirection URI for the *Authorization Code Grant* and *Implicit Grant* types. You can either use a WebView (for development/debugging purpose only) or spawn an external browser to present the web page and use deep-link to retrieve the redirected URI.

## Usage

Usage description assume you have some knowledge of the OAuth 2.0 authentications flows and the data involved.

### HTTP request handler

A typical implementation with the [http](https://pub.dev/packages/http) package will look like this :

```dart
import 'package:http/http.dart' as http;

class MyHttpRequestHandler 
    implements OAuth2HttpRequestHandler {
  Future<OAuth2HttpResponse> post(
    Uri url,
    Map<String, String> headers,
    Map<String, String> formData,
  ) async {
    final response = await http.post(
        url, 
        headers: headers, 
        body: Uri(queryParameters: formData).query,
    );

    return OAuth2HttpResponse(
        status: response.statusCode,
        statusText: response.reasonPhrase,
        formData: Uri.splitQueryString(response.body),
    );
  }
}
```

or if you use the [ac_fetch](https://pub.dev/packages/ac_fetch) package :

```dart
class MyHttpRequestHandler 
    implements OAuth2HttpRequestHandler {
  Future<OAuth2HttpResponse> post(
    Uri url,
    Map<String, String> headers,
    Map<String, String> formData,
  ) {
    final options = FetchOptions(
        method: 'POST',
        url: url,
        headers: headers,
    );

    final response = await fetchWithStructuredData(options, formData);

    return OAuth2HttpResponse(
        status: response.status,
        statusText: response.statusText,
        formData: response.ok
            ? await response.waitStructuredData()
            : null,
    );
  }
}
```

### Authorization Code Grant 

#### Generating the authorization URL

```dart
final authorizationEndpoint = 
    Uri.parse('https://www.example.com/oauth/authorize');

final clientCredentialsIdentifier = 
    OAuth2ClientCredentialsIdentifier(
        identifier: '<client_id>',
        authentication: OAuth2ClientAuthenticationSecret(
            secret: '<client_secret>',
        ),
    );

// Optionally you can define a random state.
final state = OAuth2State.random();

// Optionally, for those providers which allow multiple redirection URI, 
// you can pass the redirect URI. 
// Or, for those who only allow one redirection URI, they may make this 
// parameter mandatory.
final redirectUri = Uri.parse('my-app://deeplink');

// Optionally pass the desired OAuth 2.0 scopes
final scopes = ['read', 'write'];

// Optionally pass custom parameters
final customParameters = <String, String>{
    'my-provider-custom-parameter': 'value',
}

final url = OAuth2Client.composeAuthorizationCodeGrantUrl(
    authorizationEndpoint: authorizationEndpoint,
    clientCredentialsIdentifier: clientCredentialsIdentifier,
    state: state,
    redirectUri: redirectUri,
    scopes: scopes,
    customParameters: customParameters,
);

// ... present url to the user
```

#### Parsing the redirection URI

```dart
// the redirection URI you got back from authorization
Uri redirectionUri;

// the state you passed to composeAuthorizationCodeGrantUrl
OAuth2State? state;

final result =  OAuth2Client.parseAuthorizationCodeGrantRedirectionUri(
    redirectionUri: redirectionUri,
    state: state,
);

// the authorization code, only valid for a few minutes, 
// which allows creation of tokens.
print(result.code);
```

#### Token Grant from Authorization Code

```dart
final tokenEndpoint = 
    Uri.parse('https://www.example.com/oauth/token');

// the redirectUri you used as parameter to composeAuthorizationCodeGrantUrl.
Uri? originalRedirectUri;

// optionally pass some custom parameters
Map<String, String>? customParameters;

final result = await OAuth2Client.authorizationCodeTokenGrant(
    requestHandler: MyHttpRequestHandler(),
    tokenEndpoint: tokenEndpoint,
    clientCredentials: clientCredentialsIdentifier,
    authorizationCode: authorizationResult.code,
    originalRedirectUri: originalRedirectUri,
    customParameters: customParameters,
);

print(result.accessToken);
print(result.expiresIn);
print(result.refreshToken); 
// ...
```

### Refreshing an Access Token

```dart
final tokenEndpoint = 
    Uri.parse('https://www.example.com/oauth/token');

final clientCredentials = 
    OAuth2ClientCredentialsIdentifier(
        identifier: '<client_id>',
        authentication: OAuth2ClientAuthenticationSecret(
            secret: '<client_secret>',
        ),
    );

// probably retrieved from OAuth2TokenGrantResult.refreshToken
final refreshToken = '<refresh_token>';

// Optionally pass the desired OAuth 2.0 scopes
OAuth2Scopes? scopes = ['read'];

// optionally pass some custom parameters
Map<String, String>? customParameters;

final result = await OAuth2Client.refreshToken(
    requestHandler: MyHttpRequestHandler(),
    tokenEndpoint: tokenEndpoint,
    clientCredentials: clientCredentials,
    refreshToken: refreshToken,
    scopes: scopes,
    customParameters: customParameters,
);

// new access token
print(result.accessToken);
```

### Revoking a token

```dart
final revocationEndpoint = 
    Uri.parse('https://www.example.com/oauth/revoke');

final token = '<access_or_refresh_token>';

// optionally, give an hint to the server which token 
// you want to revoke
OAuth2TokenType? tokenTypeHint;

// optionally pass some custom parameters
Map<String, String>? customParameters;

await OAuth2Client.revokeToken(
    requestHandler: MyHttpRequestHandler(),
    revocationEndpoint: revocationEndpoint,
    clientCredentials: clientCredentials,
    token: token,
    tokenTypeHint: tokenTypeHint,
    customParameters: customParameters,
);
```