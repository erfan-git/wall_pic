// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uploader.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Uploader _$$_UploaderFromJson(Map<String, dynamic> json) => _$_Uploader(
      avatar: json['avatar'] == null
          ? null
          : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
      group: json['group'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$_UploaderToJson(_$_Uploader instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'group': instance.group,
      'username': instance.username,
    };
