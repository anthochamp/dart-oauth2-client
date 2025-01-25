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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of OAuth2ClientAuthentication
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OAuth2ClientAuthenticationSecretImplCopyWith<$Res> {
  factory _$$OAuth2ClientAuthenticationSecretImplCopyWith(
          _$OAuth2ClientAuthenticationSecretImpl value,
          $Res Function(_$OAuth2ClientAuthenticationSecretImpl) then) =
      __$$OAuth2ClientAuthenticationSecretImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String secret});
}

/// @nodoc
class __$$OAuth2ClientAuthenticationSecretImplCopyWithImpl<$Res>
    extends _$OAuth2ClientAuthenticationCopyWithImpl<$Res,
        _$OAuth2ClientAuthenticationSecretImpl>
    implements _$$OAuth2ClientAuthenticationSecretImplCopyWith<$Res> {
  __$$OAuth2ClientAuthenticationSecretImplCopyWithImpl(
      _$OAuth2ClientAuthenticationSecretImpl _value,
      $Res Function(_$OAuth2ClientAuthenticationSecretImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuth2ClientAuthentication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secret = null,
  }) {
    return _then(_$OAuth2ClientAuthenticationSecretImpl(
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OAuth2ClientAuthenticationSecretImpl
    implements OAuth2ClientAuthenticationSecret {
  const _$OAuth2ClientAuthenticationSecretImpl({required this.secret});

  @override
  final String secret;

  @override
  String toString() {
    return 'OAuth2ClientAuthentication.secret(secret: $secret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuth2ClientAuthenticationSecretImpl &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @override
  int get hashCode => Object.hash(runtimeType, secret);

  /// Create a copy of OAuth2ClientAuthentication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuth2ClientAuthenticationSecretImplCopyWith<
          _$OAuth2ClientAuthenticationSecretImpl>
      get copyWith => __$$OAuth2ClientAuthenticationSecretImplCopyWithImpl<
          _$OAuth2ClientAuthenticationSecretImpl>(this, _$identity);

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
      {required final String secret}) = _$OAuth2ClientAuthenticationSecretImpl;

  String get secret;

  /// Create a copy of OAuth2ClientAuthentication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuth2ClientAuthenticationSecretImplCopyWith<
          _$OAuth2ClientAuthenticationSecretImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OAuth2ClientAuthenticationPasswordImplCopyWith<$Res> {
  factory _$$OAuth2ClientAuthenticationPasswordImplCopyWith(
          _$OAuth2ClientAuthenticationPasswordImpl value,
          $Res Function(_$OAuth2ClientAuthenticationPasswordImpl) then) =
      __$$OAuth2ClientAuthenticationPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$OAuth2ClientAuthenticationPasswordImplCopyWithImpl<$Res>
    extends _$OAuth2ClientAuthenticationCopyWithImpl<$Res,
        _$OAuth2ClientAuthenticationPasswordImpl>
    implements _$$OAuth2ClientAuthenticationPasswordImplCopyWith<$Res> {
  __$$OAuth2ClientAuthenticationPasswordImplCopyWithImpl(
      _$OAuth2ClientAuthenticationPasswordImpl _value,
      $Res Function(_$OAuth2ClientAuthenticationPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuth2ClientAuthentication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$OAuth2ClientAuthenticationPasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OAuth2ClientAuthenticationPasswordImpl
    implements OAuth2ClientAuthenticationPassword {
  const _$OAuth2ClientAuthenticationPasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'OAuth2ClientAuthentication.password(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuth2ClientAuthenticationPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of OAuth2ClientAuthentication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuth2ClientAuthenticationPasswordImplCopyWith<
          _$OAuth2ClientAuthenticationPasswordImpl>
      get copyWith => __$$OAuth2ClientAuthenticationPasswordImplCopyWithImpl<
          _$OAuth2ClientAuthenticationPasswordImpl>(this, _$identity);

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
          {required final String password}) =
      _$OAuth2ClientAuthenticationPasswordImpl;

  String get password;

  /// Create a copy of OAuth2ClientAuthentication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuth2ClientAuthenticationPasswordImplCopyWith<
          _$OAuth2ClientAuthenticationPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
