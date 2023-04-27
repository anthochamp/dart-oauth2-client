// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth2_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OAuth2ClientAuthentication {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String secret) secret,
    required TResult Function(String password) password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String secret)? secret,
    TResult? Function(String password)? password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String secret)? secret,
    TResult Function(String password)? password,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OAuth2ClientAuthenticationSecret value) secret,
    required TResult Function(OAuth2ClientAuthenticationPassword value)
        password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OAuth2ClientAuthenticationSecret value)? secret,
    TResult? Function(OAuth2ClientAuthenticationPassword value)? password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OAuth2ClientAuthenticationSecret value)? secret,
    TResult Function(OAuth2ClientAuthenticationPassword value)? password,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuth2ClientAuthenticationCopyWith<$Res> {
  factory $OAuth2ClientAuthenticationCopyWith(OAuth2ClientAuthentication value,
          $Res Function(OAuth2ClientAuthentication) then) =
      _$OAuth2ClientAuthenticationCopyWithImpl<$Res,
          OAuth2ClientAuthentication>;
}

/// @nodoc
class _$OAuth2ClientAuthenticationCopyWithImpl<$Res,
        $Val extends OAuth2ClientAuthentication>
    implements $OAuth2ClientAuthenticationCopyWith<$Res> {
  _$OAuth2ClientAuthenticationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OAuth2ClientAuthenticationSecretCopyWith<$Res> {
  factory _$$OAuth2ClientAuthenticationSecretCopyWith(
          _$OAuth2ClientAuthenticationSecret value,
          $Res Function(_$OAuth2ClientAuthenticationSecret) then) =
      __$$OAuth2ClientAuthenticationSecretCopyWithImpl<$Res>;
  @useResult
  $Res call({String secret});
}

/// @nodoc
class __$$OAuth2ClientAuthenticationSecretCopyWithImpl<$Res>
    extends _$OAuth2ClientAuthenticationCopyWithImpl<$Res,
        _$OAuth2ClientAuthenticationSecret>
    implements _$$OAuth2ClientAuthenticationSecretCopyWith<$Res> {
  __$$OAuth2ClientAuthenticationSecretCopyWithImpl(
      _$OAuth2ClientAuthenticationSecret _value,
      $Res Function(_$OAuth2ClientAuthenticationSecret) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secret = null,
  }) {
    return _then(_$OAuth2ClientAuthenticationSecret(
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OAuth2ClientAuthenticationSecret
    implements OAuth2ClientAuthenticationSecret {
  const _$OAuth2ClientAuthenticationSecret({required this.secret});

  @override
  final String secret;

  @override
  String toString() {
    return 'OAuth2ClientAuthentication.secret(secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuth2ClientAuthenticationSecret &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @override
  int get hashCode => Object.hash(runtimeType, secret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuth2ClientAuthenticationSecretCopyWith<
          _$OAuth2ClientAuthenticationSecret>
      get copyWith => __$$OAuth2ClientAuthenticationSecretCopyWithImpl<
          _$OAuth2ClientAuthenticationSecret>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String secret) secret,
    required TResult Function(String password) password,
  }) {
    return secret(this.secret);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String secret)? secret,
    TResult? Function(String password)? password,
  }) {
    return secret?.call(this.secret);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String secret)? secret,
    TResult Function(String password)? password,
    required TResult orElse(),
  }) {
    if (secret != null) {
      return secret(this.secret);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OAuth2ClientAuthenticationSecret value) secret,
    required TResult Function(OAuth2ClientAuthenticationPassword value)
        password,
  }) {
    return secret(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OAuth2ClientAuthenticationSecret value)? secret,
    TResult? Function(OAuth2ClientAuthenticationPassword value)? password,
  }) {
    return secret?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OAuth2ClientAuthenticationSecret value)? secret,
    TResult Function(OAuth2ClientAuthenticationPassword value)? password,
    required TResult orElse(),
  }) {
    if (secret != null) {
      return secret(this);
    }
    return orElse();
  }
}

abstract class OAuth2ClientAuthenticationSecret
    implements OAuth2ClientAuthentication {
  const factory OAuth2ClientAuthenticationSecret(
      {required final String secret}) = _$OAuth2ClientAuthenticationSecret;

  String get secret;
  @JsonKey(ignore: true)
  _$$OAuth2ClientAuthenticationSecretCopyWith<
          _$OAuth2ClientAuthenticationSecret>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OAuth2ClientAuthenticationPasswordCopyWith<$Res> {
  factory _$$OAuth2ClientAuthenticationPasswordCopyWith(
          _$OAuth2ClientAuthenticationPassword value,
          $Res Function(_$OAuth2ClientAuthenticationPassword) then) =
      __$$OAuth2ClientAuthenticationPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$OAuth2ClientAuthenticationPasswordCopyWithImpl<$Res>
    extends _$OAuth2ClientAuthenticationCopyWithImpl<$Res,
        _$OAuth2ClientAuthenticationPassword>
    implements _$$OAuth2ClientAuthenticationPasswordCopyWith<$Res> {
  __$$OAuth2ClientAuthenticationPasswordCopyWithImpl(
      _$OAuth2ClientAuthenticationPassword _value,
      $Res Function(_$OAuth2ClientAuthenticationPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$OAuth2ClientAuthenticationPassword(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OAuth2ClientAuthenticationPassword
    implements OAuth2ClientAuthenticationPassword {
  const _$OAuth2ClientAuthenticationPassword({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'OAuth2ClientAuthentication.password(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuth2ClientAuthenticationPassword &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuth2ClientAuthenticationPasswordCopyWith<
          _$OAuth2ClientAuthenticationPassword>
      get copyWith => __$$OAuth2ClientAuthenticationPasswordCopyWithImpl<
          _$OAuth2ClientAuthenticationPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String secret) secret,
    required TResult Function(String password) password,
  }) {
    return password(this.password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String secret)? secret,
    TResult? Function(String password)? password,
  }) {
    return password?.call(this.password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String secret)? secret,
    TResult Function(String password)? password,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this.password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OAuth2ClientAuthenticationSecret value) secret,
    required TResult Function(OAuth2ClientAuthenticationPassword value)
        password,
  }) {
    return password(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OAuth2ClientAuthenticationSecret value)? secret,
    TResult? Function(OAuth2ClientAuthenticationPassword value)? password,
  }) {
    return password?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OAuth2ClientAuthenticationSecret value)? secret,
    TResult Function(OAuth2ClientAuthenticationPassword value)? password,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this);
    }
    return orElse();
  }
}

abstract class OAuth2ClientAuthenticationPassword
    implements OAuth2ClientAuthentication {
  const factory OAuth2ClientAuthenticationPassword(
      {required final String password}) = _$OAuth2ClientAuthenticationPassword;

  String get password;
  @JsonKey(ignore: true)
  _$$OAuth2ClientAuthenticationPasswordCopyWith<
          _$OAuth2ClientAuthenticationPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OAuth2ClientCredentials {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String identifier, OAuth2ClientAuthentication? authentication)
        identifier,
    required TResult Function(String username,
            OAuth2ClientAuthenticationPassword authenticationPassword)
        username,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String identifier, OAuth2ClientAuthentication? authentication)?
        identifier,
    TResult? Function(String username,
            OAuth2ClientAuthenticationPassword authenticationPassword)?
        username,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String identifier, OAuth2ClientAuthentication? authentication)?
        identifier,
    TResult Function(String username,
            OAuth2ClientAuthenticationPassword authenticationPassword)?
        username,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OAuth2ClientCredentialsIdentifier value)
        identifier,
    required TResult Function(OAuth2ClientCredentialsUserPass value) username,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OAuth2ClientCredentialsIdentifier value)? identifier,
    TResult? Function(OAuth2ClientCredentialsUserPass value)? username,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OAuth2ClientCredentialsIdentifier value)? identifier,
    TResult Function(OAuth2ClientCredentialsUserPass value)? username,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuth2ClientCredentialsCopyWith<$Res> {
  factory $OAuth2ClientCredentialsCopyWith(OAuth2ClientCredentials value,
          $Res Function(OAuth2ClientCredentials) then) =
      _$OAuth2ClientCredentialsCopyWithImpl<$Res, OAuth2ClientCredentials>;
}

/// @nodoc
class _$OAuth2ClientCredentialsCopyWithImpl<$Res,
        $Val extends OAuth2ClientCredentials>
    implements $OAuth2ClientCredentialsCopyWith<$Res> {
  _$OAuth2ClientCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OAuth2ClientCredentialsIdentifierCopyWith<$Res> {
  factory _$$OAuth2ClientCredentialsIdentifierCopyWith(
          _$OAuth2ClientCredentialsIdentifier value,
          $Res Function(_$OAuth2ClientCredentialsIdentifier) then) =
      __$$OAuth2ClientCredentialsIdentifierCopyWithImpl<$Res>;
  @useResult
  $Res call({String identifier, OAuth2ClientAuthentication? authentication});

  $OAuth2ClientAuthenticationCopyWith<$Res>? get authentication;
}

/// @nodoc
class __$$OAuth2ClientCredentialsIdentifierCopyWithImpl<$Res>
    extends _$OAuth2ClientCredentialsCopyWithImpl<$Res,
        _$OAuth2ClientCredentialsIdentifier>
    implements _$$OAuth2ClientCredentialsIdentifierCopyWith<$Res> {
  __$$OAuth2ClientCredentialsIdentifierCopyWithImpl(
      _$OAuth2ClientCredentialsIdentifier _value,
      $Res Function(_$OAuth2ClientCredentialsIdentifier) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? authentication = freezed,
  }) {
    return _then(_$OAuth2ClientCredentialsIdentifier(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      authentication: freezed == authentication
          ? _value.authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as OAuth2ClientAuthentication?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OAuth2ClientAuthenticationCopyWith<$Res>? get authentication {
    if (_value.authentication == null) {
      return null;
    }

    return $OAuth2ClientAuthenticationCopyWith<$Res>(_value.authentication!,
        (value) {
      return _then(_value.copyWith(authentication: value));
    });
  }
}

/// @nodoc

class _$OAuth2ClientCredentialsIdentifier
    extends OAuth2ClientCredentialsIdentifier {
  const _$OAuth2ClientCredentialsIdentifier(
      {required this.identifier, this.authentication})
      : super._();

  @override
  final String identifier;
  @override
  final OAuth2ClientAuthentication? authentication;

  @override
  String toString() {
    return 'OAuth2ClientCredentials.identifier(identifier: $identifier, authentication: $authentication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuth2ClientCredentialsIdentifier &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.authentication, authentication) ||
                other.authentication == authentication));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier, authentication);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuth2ClientCredentialsIdentifierCopyWith<
          _$OAuth2ClientCredentialsIdentifier>
      get copyWith => __$$OAuth2ClientCredentialsIdentifierCopyWithImpl<
          _$OAuth2ClientCredentialsIdentifier>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String identifier, OAuth2ClientAuthentication? authentication)
        identifier,
    required TResult Function(String username,
            OAuth2ClientAuthenticationPassword authenticationPassword)
        username,
  }) {
    return identifier(this.identifier, authentication);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String identifier, OAuth2ClientAuthentication? authentication)?
        identifier,
    TResult? Function(String username,
            OAuth2ClientAuthenticationPassword authenticationPassword)?
        username,
  }) {
    return identifier?.call(this.identifier, authentication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String identifier, OAuth2ClientAuthentication? authentication)?
        identifier,
    TResult Function(String username,
            OAuth2ClientAuthenticationPassword authenticationPassword)?
        username,
    required TResult orElse(),
  }) {
    if (identifier != null) {
      return identifier(this.identifier, authentication);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OAuth2ClientCredentialsIdentifier value)
        identifier,
    required TResult Function(OAuth2ClientCredentialsUserPass value) username,
  }) {
    return identifier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OAuth2ClientCredentialsIdentifier value)? identifier,
    TResult? Function(OAuth2ClientCredentialsUserPass value)? username,
  }) {
    return identifier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OAuth2ClientCredentialsIdentifier value)? identifier,
    TResult Function(OAuth2ClientCredentialsUserPass value)? username,
    required TResult orElse(),
  }) {
    if (identifier != null) {
      return identifier(this);
    }
    return orElse();
  }
}

abstract class OAuth2ClientCredentialsIdentifier
    extends OAuth2ClientCredentials {
  const factory OAuth2ClientCredentialsIdentifier(
          {required final String identifier,
          final OAuth2ClientAuthentication? authentication}) =
      _$OAuth2ClientCredentialsIdentifier;
  const OAuth2ClientCredentialsIdentifier._() : super._();

  String get identifier;
  OAuth2ClientAuthentication? get authentication;
  @JsonKey(ignore: true)
  _$$OAuth2ClientCredentialsIdentifierCopyWith<
          _$OAuth2ClientCredentialsIdentifier>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OAuth2ClientCredentialsUserPassCopyWith<$Res> {
  factory _$$OAuth2ClientCredentialsUserPassCopyWith(
          _$OAuth2ClientCredentialsUserPass value,
          $Res Function(_$OAuth2ClientCredentialsUserPass) then) =
      __$$OAuth2ClientCredentialsUserPassCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username,
      OAuth2ClientAuthenticationPassword authenticationPassword});
}

/// @nodoc
class __$$OAuth2ClientCredentialsUserPassCopyWithImpl<$Res>
    extends _$OAuth2ClientCredentialsCopyWithImpl<$Res,
        _$OAuth2ClientCredentialsUserPass>
    implements _$$OAuth2ClientCredentialsUserPassCopyWith<$Res> {
  __$$OAuth2ClientCredentialsUserPassCopyWithImpl(
      _$OAuth2ClientCredentialsUserPass _value,
      $Res Function(_$OAuth2ClientCredentialsUserPass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? authenticationPassword = freezed,
  }) {
    return _then(_$OAuth2ClientCredentialsUserPass(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationPassword: freezed == authenticationPassword
          ? _value.authenticationPassword
          : authenticationPassword // ignore: cast_nullable_to_non_nullable
              as OAuth2ClientAuthenticationPassword,
    ));
  }
}

/// @nodoc

class _$OAuth2ClientCredentialsUserPass
    extends OAuth2ClientCredentialsUserPass {
  const _$OAuth2ClientCredentialsUserPass(
      {required this.username, required this.authenticationPassword})
      : super._();

  @override
  final String username;
  @override
  final OAuth2ClientAuthenticationPassword authenticationPassword;

  @override
  String toString() {
    return 'OAuth2ClientCredentials.username(username: $username, authenticationPassword: $authenticationPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuth2ClientCredentialsUserPass &&
            (identical(other.username, username) ||
                other.username == username) &&
            const DeepCollectionEquality()
                .equals(other.authenticationPassword, authenticationPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username,
      const DeepCollectionEquality().hash(authenticationPassword));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuth2ClientCredentialsUserPassCopyWith<_$OAuth2ClientCredentialsUserPass>
      get copyWith => __$$OAuth2ClientCredentialsUserPassCopyWithImpl<
          _$OAuth2ClientCredentialsUserPass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String identifier, OAuth2ClientAuthentication? authentication)
        identifier,
    required TResult Function(String username,
            OAuth2ClientAuthenticationPassword authenticationPassword)
        username,
  }) {
    return username(this.username, authenticationPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String identifier, OAuth2ClientAuthentication? authentication)?
        identifier,
    TResult? Function(String username,
            OAuth2ClientAuthenticationPassword authenticationPassword)?
        username,
  }) {
    return username?.call(this.username, authenticationPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String identifier, OAuth2ClientAuthentication? authentication)?
        identifier,
    TResult Function(String username,
            OAuth2ClientAuthenticationPassword authenticationPassword)?
        username,
    required TResult orElse(),
  }) {
    if (username != null) {
      return username(this.username, authenticationPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OAuth2ClientCredentialsIdentifier value)
        identifier,
    required TResult Function(OAuth2ClientCredentialsUserPass value) username,
  }) {
    return username(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OAuth2ClientCredentialsIdentifier value)? identifier,
    TResult? Function(OAuth2ClientCredentialsUserPass value)? username,
  }) {
    return username?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OAuth2ClientCredentialsIdentifier value)? identifier,
    TResult Function(OAuth2ClientCredentialsUserPass value)? username,
    required TResult orElse(),
  }) {
    if (username != null) {
      return username(this);
    }
    return orElse();
  }
}

abstract class OAuth2ClientCredentialsUserPass extends OAuth2ClientCredentials {
  const factory OAuth2ClientCredentialsUserPass(
      {required final String username,
      required final OAuth2ClientAuthenticationPassword
          authenticationPassword}) = _$OAuth2ClientCredentialsUserPass;
  const OAuth2ClientCredentialsUserPass._() : super._();

  String get username;
  OAuth2ClientAuthenticationPassword get authenticationPassword;
  @JsonKey(ignore: true)
  _$$OAuth2ClientCredentialsUserPassCopyWith<_$OAuth2ClientCredentialsUserPass>
      get copyWith => throw _privateConstructorUsedError;
}
