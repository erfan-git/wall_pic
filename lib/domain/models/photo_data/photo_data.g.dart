// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoData _$$_PhotoDataFromJson(Map<String, dynamic> json) => _$_PhotoData(
      data: json['data'] == null
          ? null
          : Photo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PhotoDataToJson(_$_PhotoData instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
