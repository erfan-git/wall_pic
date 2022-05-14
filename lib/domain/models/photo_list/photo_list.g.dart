// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoList _$$_PhotoListFromJson(Map<String, dynamic> json) => _$_PhotoList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PhotoListToJson(_$_PhotoList instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
