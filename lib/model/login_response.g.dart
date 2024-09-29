// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse()
      ..id = (json['id'] as num?)?.toInt()
      ..name = json['name'] as String?
      ..userId = json['user_id'] as String?
      ..password = json['password'] as String?;

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_id': instance.userId,
      'password': instance.password,
    };
