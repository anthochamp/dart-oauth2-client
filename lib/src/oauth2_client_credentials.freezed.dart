// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth2_client_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of OAuth2ClientCredentials
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OAuth2ClientCredentialsIdentifierImplCopyWith<$Res> {
  factory _$$OAuth2ClientCredentialsIdentifierImplCopyWith(
          _$OAuth2ClientCredentialsIdentifierImpl value,
          $Res Function(_$OAuth2ClientCredentialsIdentifierImpl) then) =
      __$$OAuth2ClientCredentialsIdentifierImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String identifier, OAuth2ClientAuthentication? authentication});

  $OAuth2ClientAuthenticationCopyWith<$Res>? get authentication;
}

/// @nodoc
class __$$OAuth2ClientCredentialsIdentifierImplCopyWithImpl<$Res>
    extends _$OAuth2ClientCredentialsCopyWithImpl<$Res,
        _$OAuth2ClientCredentialsIdentifierImpl>
    implements _$$OAuth2ClientCredentialsIdentifierImplCopyWith<$Res> {
  __$$OAuth2ClientCredentialsIdentifierImplCopyWithImpl(
      _$OAuth2ClientCredentialsIdentifierImpl _value,
      $Res Function(_$OAuth2ClientCredentialsIdentifierImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuth2ClientCredentials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? authentication = freezed,
  }) {
    return _then(_$OAuth2ClientCredentialsIdentifierImpl(
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

  /// Create a copy of OAuth2ClientCredentials
  /// with the given fields replaced by the non-null parameter values.
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

class _$OAuth2ClientCredentialsIdentifierImpl
    extends OAuth2ClientCredentialsIdentifier {
  const _$OAuth2ClientCredentialsIdentifierImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuth2ClientCredentialsIdentifierImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.authentication, authentication) ||
                other.authentication == authentication));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier, authentication);

  /// Create a copy of OAuth2ClientCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuth2ClientCredentialsIdentifierImplCopyWith<
          _$OAuth2ClientCredentialsIdentifierImpl>
      get copyWith => __$$OAuth2ClientCredentialsIdentifierImplCopyWithImpl<
          _$OAuth2ClientCredentialsIdentifierImpl>(this, _$identity);

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
      _$OAuth2ClientCredentialsIdentifierImpl;
  const OAuth2ClientCredentialsIdentifier._() : super._();

  String get identifier;
  OAuth2ClientAuthentication? get authentication;

  /// Create a copy of OAuth2ClientCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuth2ClientCredentialsIdentifierImplCopyWith<
          _$OAuth2ClientCredentialsIdentifierImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OAuth2ClientCredentialsUserPassImplCopyWith<$Res> {
  factory _$$OAuth2ClientCredentialsUserPassImplCopyWith(
          _$OAuth2ClientCredentialsUserPassImpl value,
          $Res Function(_$OAuth2ClientCredentialsUserPassImpl) then) =
      __$$OAuth2ClientCredentialsUserPassImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username,
      OAuth2ClientAuthenticationPassword authenticationPassword});
}

/// @nodoc
class __$$OAuth2ClientCredentialsUserPassImplCopyWithImpl<$Res>
    extends _$OAuth2ClientCredentialsCopyWithImpl<$Res,
        _$OAuth2ClientCredentialsUserPassImpl>
    implements _$$OAuth2ClientCredentialsUserPassImplCopyWith<$Res> {
  __$$OAuth2ClientCredentialsUserPassImplCopyWithImpl(
      _$OAuth2ClientCredentialsUserPassImpl _value,
      $Res Function(_$OAuth2ClientCredentialsUserPassImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuth2ClientCredentials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? authenticationPassword = freezed,
  }) {
    return _then(_$OAuth2ClientCredentialsUserPassImpl(
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

class _$OAuth2ClientCredentialsUserPassImpl
    extends OAuth2ClientCredentialsUserPass {
  const _$OAuth2ClientCredentialsUserPassImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuth2ClientCredentialsUserPassImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            const DeepCollectionEquality()
                .equals(other.authenticationPassword, authenticationPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username,
      const DeepCollectionEquality().hash(authenticationPassword));

  /// Create a copy of OAuth2ClientCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuth2ClientCredentialsUserPassImplCopyWith<
          _$OAuth2ClientCredentialsUserPassImpl>
      get copyWith => __$$OAuth2ClientCredentialsUserPassImplCopyWithImpl<
          _$OAuth2ClientCredentialsUserPassImpl>(this, _$identity);

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
          authenticationPassword}) = _$OAuth2ClientCredentialsUserPassImpl;
  const OAuth2ClientCredentialsUserPass._() : super._();

  String get username;
  OAuth2ClientAuthenticationPassword get authenticationPassword;

  /// Create a copy of OAuth2ClientCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuth2ClientCredentialsUserPassImplCopyWith<
          _$OAuth2ClientCredentialsUserPassImpl>
      get copyWith => throw _privateConstructorUsedError;
}
