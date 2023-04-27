import 'dart:math';

typedef OAuth2StateValue = String;

const kOAuth2DefaultRandomStateMinLength = 30;
const kOAuth2DefaultRandomStateMaxLength = 50;

class OAuth2State {
  final OAuth2StateValue value;

  const OAuth2State(this.value);

  factory OAuth2State.random({
    Random? random,
    String allowedChars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890',
    int minLength = kOAuth2DefaultRandomStateMinLength,
    int maxLength = kOAuth2DefaultRandomStateMaxLength,
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
