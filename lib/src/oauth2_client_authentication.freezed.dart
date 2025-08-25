// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth2_client_authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OAuth2ClientAuthentication {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuth2ClientAuthentication);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OAuth2ClientAuthentication()';
}


}

/// @nodoc
class $OAuth2ClientAuthenticationCopyWith<$Res>  {
$OAuth2ClientAuthenticationCopyWith(OAuth2ClientAuthentication _, $Res Function(OAuth2ClientAuthentication) __);
}


/// Adds pattern-matching-related methods to [OAuth2ClientAuthentication].
extension OAuth2ClientAuthenticationPatterns on OAuth2ClientAuthentication {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OAuth2ClientAuthenticationSecret value)?  secret,TResult Function( OAuth2ClientAuthenticationPassword value)?  password,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OAuth2ClientAuthenticationSecret() when secret != null:
return secret(_that);case OAuth2ClientAuthenticationPassword() when password != null:
return password(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OAuth2ClientAuthenticationSecret value)  secret,required TResult Function( OAuth2ClientAuthenticationPassword value)  password,}){
final _that = this;
switch (_that) {
case OAuth2ClientAuthenticationSecret():
return secret(_that);case OAuth2ClientAuthenticationPassword():
return password(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OAuth2ClientAuthenticationSecret value)?  secret,TResult? Function( OAuth2ClientAuthenticationPassword value)?  password,}){
final _that = this;
switch (_that) {
case OAuth2ClientAuthenticationSecret() when secret != null:
return secret(_that);case OAuth2ClientAuthenticationPassword() when password != null:
return password(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String secret)?  secret,TResult Function( String password)?  password,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OAuth2ClientAuthenticationSecret() when secret != null:
return secret(_that.secret);case OAuth2ClientAuthenticationPassword() when password != null:
return password(_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String secret)  secret,required TResult Function( String password)  password,}) {final _that = this;
switch (_that) {
case OAuth2ClientAuthenticationSecret():
return secret(_that.secret);case OAuth2ClientAuthenticationPassword():
return password(_that.password);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String secret)?  secret,TResult? Function( String password)?  password,}) {final _that = this;
switch (_that) {
case OAuth2ClientAuthenticationSecret() when secret != null:
return secret(_that.secret);case OAuth2ClientAuthenticationPassword() when password != null:
return password(_that.password);case _:
  return null;

}
}

}

/// @nodoc


class OAuth2ClientAuthenticationSecret implements OAuth2ClientAuthentication {
  const OAuth2ClientAuthenticationSecret({required this.secret});
  

 final  String secret;

/// Create a copy of OAuth2ClientAuthentication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuth2ClientAuthenticationSecretCopyWith<OAuth2ClientAuthenticationSecret> get copyWith => _$OAuth2ClientAuthenticationSecretCopyWithImpl<OAuth2ClientAuthenticationSecret>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuth2ClientAuthenticationSecret&&(identical(other.secret, secret) || other.secret == secret));
}


@override
int get hashCode => Object.hash(runtimeType,secret);

@override
String toString() {
  return 'OAuth2ClientAuthentication.secret(secret: $secret)';
}


}

/// @nodoc
abstract mixin class $OAuth2ClientAuthenticationSecretCopyWith<$Res> implements $OAuth2ClientAuthenticationCopyWith<$Res> {
  factory $OAuth2ClientAuthenticationSecretCopyWith(OAuth2ClientAuthenticationSecret value, $Res Function(OAuth2ClientAuthenticationSecret) _then) = _$OAuth2ClientAuthenticationSecretCopyWithImpl;
@useResult
$Res call({
 String secret
});




}
/// @nodoc
class _$OAuth2ClientAuthenticationSecretCopyWithImpl<$Res>
    implements $OAuth2ClientAuthenticationSecretCopyWith<$Res> {
  _$OAuth2ClientAuthenticationSecretCopyWithImpl(this._self, this._then);

  final OAuth2ClientAuthenticationSecret _self;
  final $Res Function(OAuth2ClientAuthenticationSecret) _then;

/// Create a copy of OAuth2ClientAuthentication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? secret = null,}) {
  return _then(OAuth2ClientAuthenticationSecret(
secret: null == secret ? _self.secret : secret // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OAuth2ClientAuthenticationPassword implements OAuth2ClientAuthentication {
  const OAuth2ClientAuthenticationPassword({required this.password});
  

 final  String password;

/// Create a copy of OAuth2ClientAuthentication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuth2ClientAuthenticationPasswordCopyWith<OAuth2ClientAuthenticationPassword> get copyWith => _$OAuth2ClientAuthenticationPasswordCopyWithImpl<OAuth2ClientAuthenticationPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuth2ClientAuthenticationPassword&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'OAuth2ClientAuthentication.password(password: $password)';
}


}

/// @nodoc
abstract mixin class $OAuth2ClientAuthenticationPasswordCopyWith<$Res> implements $OAuth2ClientAuthenticationCopyWith<$Res> {
  factory $OAuth2ClientAuthenticationPasswordCopyWith(OAuth2ClientAuthenticationPassword value, $Res Function(OAuth2ClientAuthenticationPassword) _then) = _$OAuth2ClientAuthenticationPasswordCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$OAuth2ClientAuthenticationPasswordCopyWithImpl<$Res>
    implements $OAuth2ClientAuthenticationPasswordCopyWith<$Res> {
  _$OAuth2ClientAuthenticationPasswordCopyWithImpl(this._self, this._then);

  final OAuth2ClientAuthenticationPassword _self;
  final $Res Function(OAuth2ClientAuthenticationPassword) _then;

/// Create a copy of OAuth2ClientAuthentication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(OAuth2ClientAuthenticationPassword(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
