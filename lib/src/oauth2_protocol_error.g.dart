// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth2_protocol_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OAuth2ProtocolError _$OAuth2ProtocolErrorFromJson(Map<String, dynamic> json) =>
    OAuth2ProtocolError(
      error: json['error'] as String,
      errorDescription: json['error_description'] as String?,
      errorUri: json['error_uri'] == null
          ? null
          : Uri.parse(json['error_uri'] as String),
    );

Map<String, dynamic> _$OAuth2ProtocolErrorToJson(OAuth2ProtocolError instance) {
  final val = <String, dynamic>{
    'error': instance.error,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('error_description', instance.errorDescription);
  writeNotNull('error_uri', instance.errorUri?.toString());
  return val;
}
