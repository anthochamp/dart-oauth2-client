import 'package:anthochamp_dart_essentials/dart_essentials.dart';

abstract class OAuth2AuthorizationRequestHandler {
  Future<Uri?> request(Uri url);
}

class OAuth2HttpResponse {
  final int status;
  final String? statusText;
  final UriQueryParameters? payload;

  OAuth2HttpResponse({
    required this.status,
    this.statusText,
    this.payload,
  });
}

abstract class OAuth2HttpRequestHandler {
  Future<OAuth2HttpResponse> request(
    String method,
    Uri url,
    Map<String, String> headers,
    UriQueryParameters payload,
  );
}
