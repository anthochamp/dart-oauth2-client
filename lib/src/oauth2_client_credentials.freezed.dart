// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth2_client_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OAuth2ClientCredentials {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuth2ClientCredentials);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OAuth2ClientCredentials()';
}


}

/// @nodoc
class $OAuth2ClientCredentialsCopyWith<$Res>  {
$OAuth2ClientCredentialsCopyWith(OAuth2ClientCredentials _, $Res Function(OAuth2ClientCredentials) __);
}


/// Adds pattern-matching-related methods to [OAuth2ClientCredentials].
extension OAuth2ClientCredentialsPatterns on OAuth2ClientCredentials {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OAuth2ClientCredentialsIdentifier value)?  identifier,TResult Function( OAuth2ClientCredentialsUserPass value)?  username,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OAuth2ClientCredentialsIdentifier() when identifier != null:
return identifier(_that);case OAuth2ClientCredentialsUserPass() when username != null:
return username(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OAuth2ClientCredentialsIdentifier value)  identifier,required TResult Function( OAuth2ClientCredentialsUserPass value)  username,}){
final _that = this;
switch (_that) {
case OAuth2ClientCredentialsIdentifier():
return identifier(_that);case OAuth2ClientCredentialsUserPass():
return username(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OAuth2ClientCredentialsIdentifier value)?  identifier,TResult? Function( OAuth2ClientCredentialsUserPass value)?  username,}){
final _that = this;
switch (_that) {
case OAuth2ClientCredentialsIdentifier() when identifier != null:
return identifier(_that);case OAuth2ClientCredentialsUserPass() when username != null:
return username(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String identifier,  OAuth2ClientAuthentication? authentication)?  identifier,TResult Function( String username,  OAuth2ClientAuthenticationPassword authenticationPassword)?  username,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OAuth2ClientCredentialsIdentifier() when identifier != null:
return identifier(_that.identifier,_that.authentication);case OAuth2ClientCredentialsUserPass() when username != null:
return username(_that.username,_that.authenticationPassword);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String identifier,  OAuth2ClientAuthentication? authentication)  identifier,required TResult Function( String username,  OAuth2ClientAuthenticationPassword authenticationPassword)  username,}) {final _that = this;
switch (_that) {
case OAuth2ClientCredentialsIdentifier():
return identifier(_that.identifier,_that.authentication);case OAuth2ClientCredentialsUserPass():
return username(_that.username,_that.authenticationPassword);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String identifier,  OAuth2ClientAuthentication? authentication)?  identifier,TResult? Function( String username,  OAuth2ClientAuthenticationPassword authenticationPassword)?  username,}) {final _that = this;
switch (_that) {
case OAuth2ClientCredentialsIdentifier() when identifier != null:
return identifier(_that.identifier,_that.authentication);case OAuth2ClientCredentialsUserPass() when username != null:
return username(_that.username,_that.authenticationPassword);case _:
  return null;

}
}

}

/// @nodoc


class OAuth2ClientCredentialsIdentifier extends OAuth2ClientCredentials {
  const OAuth2ClientCredentialsIdentifier({required this.identifier, this.authentication}): super._();
  

 final  String identifier;
 final  OAuth2ClientAuthentication? authentication;

/// Create a copy of OAuth2ClientCredentials
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuth2ClientCredentialsIdentifierCopyWith<OAuth2ClientCredentialsIdentifier> get copyWith => _$OAuth2ClientCredentialsIdentifierCopyWithImpl<OAuth2ClientCredentialsIdentifier>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuth2ClientCredentialsIdentifier&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.authentication, authentication) || other.authentication == authentication));
}


@override
int get hashCode => Object.hash(runtimeType,identifier,authentication);

@override
String toString() {
  return 'OAuth2ClientCredentials.identifier(identifier: $identifier, authentication: $authentication)';
}


}

/// @nodoc
abstract mixin class $OAuth2ClientCredentialsIdentifierCopyWith<$Res> implements $OAuth2ClientCredentialsCopyWith<$Res> {
  factory $OAuth2ClientCredentialsIdentifierCopyWith(OAuth2ClientCredentialsIdentifier value, $Res Function(OAuth2ClientCredentialsIdentifier) _then) = _$OAuth2ClientCredentialsIdentifierCopyWithImpl;
@useResult
$Res call({
 String identifier, OAuth2ClientAuthentication? authentication
});


$OAuth2ClientAuthenticationCopyWith<$Res>? get authentication;

}
/// @nodoc
class _$OAuth2ClientCredentialsIdentifierCopyWithImpl<$Res>
    implements $OAuth2ClientCredentialsIdentifierCopyWith<$Res> {
  _$OAuth2ClientCredentialsIdentifierCopyWithImpl(this._self, this._then);

  final OAuth2ClientCredentialsIdentifier _self;
  final $Res Function(OAuth2ClientCredentialsIdentifier) _then;

/// Create a copy of OAuth2ClientCredentials
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? identifier = null,Object? authentication = freezed,}) {
  return _then(OAuth2ClientCredentialsIdentifier(
identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,authentication: freezed == authentication ? _self.authentication : authentication // ignore: cast_nullable_to_non_nullable
as OAuth2ClientAuthentication?,
  ));
}

/// Create a copy of OAuth2ClientCredentials
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuth2ClientAuthenticationCopyWith<$Res>? get authentication {
    if (_self.authentication == null) {
    return null;
  }

  return $OAuth2ClientAuthenticationCopyWith<$Res>(_self.authentication!, (value) {
    return _then(_self.copyWith(authentication: value));
  });
}
}

/// @nodoc


class OAuth2ClientCredentialsUserPass extends OAuth2ClientCredentials {
  const OAuth2ClientCredentialsUserPass({required this.username, required this.authenticationPassword}): super._();
  

 final  String username;
 final  OAuth2ClientAuthenticationPassword authenticationPassword;

/// Create a copy of OAuth2ClientCredentials
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuth2ClientCredentialsUserPassCopyWith<OAuth2ClientCredentialsUserPass> get copyWith => _$OAuth2ClientCredentialsUserPassCopyWithImpl<OAuth2ClientCredentialsUserPass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuth2ClientCredentialsUserPass&&(identical(other.username, username) || other.username == username)&&const DeepCollectionEquality().equals(other.authenticationPassword, authenticationPassword));
}


@override
int get hashCode => Object.hash(runtimeType,username,const DeepCollectionEquality().hash(authenticationPassword));

@override
String toString() {
  return 'OAuth2ClientCredentials.username(username: $username, authenticationPassword: $authenticationPassword)';
}


}

/// @nodoc
abstract mixin class $OAuth2ClientCredentialsUserPassCopyWith<$Res> implements $OAuth2ClientCredentialsCopyWith<$Res> {
  factory $OAuth2ClientCredentialsUserPassCopyWith(OAuth2ClientCredentialsUserPass value, $Res Function(OAuth2ClientCredentialsUserPass) _then) = _$OAuth2ClientCredentialsUserPassCopyWithImpl;
@useResult
$Res call({
 String username, OAuth2ClientAuthenticationPassword authenticationPassword
});




}
/// @nodoc
class _$OAuth2ClientCredentialsUserPassCopyWithImpl<$Res>
    implements $OAuth2ClientCredentialsUserPassCopyWith<$Res> {
  _$OAuth2ClientCredentialsUserPassCopyWithImpl(this._self, this._then);

  final OAuth2ClientCredentialsUserPass _self;
  final $Res Function(OAuth2ClientCredentialsUserPass) _then;

/// Create a copy of OAuth2ClientCredentials
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,Object? authenticationPassword = freezed,}) {
  return _then(OAuth2ClientCredentialsUserPass(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,authenticationPassword: freezed == authenticationPassword ? _self.authenticationPassword : authenticationPassword // ignore: cast_nullable_to_non_nullable
as OAuth2ClientAuthenticationPassword,
  ));
}


}

// dart format on
