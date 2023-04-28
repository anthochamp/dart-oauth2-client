// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth2_client_authentication.dart';

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
