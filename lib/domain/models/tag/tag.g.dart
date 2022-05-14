// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tag _$$_TagFromJson(Map<String, dynamic> json) => _$_Tag(
      alias: json['alias'] as String?,
      category: json['category'] as String?,
      category_id: json['category_id'] as int?,
      name: json['name'] as String?,
      created_at: json['created_at'] as String?,
      purity: json['purity'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_TagToJson(_$_Tag instance) => <String, dynamic>{
      'alias': instance.alias,
      'category': instance.category,
      'category_id': instance.category_id,
      'name': instance.name,
      'created_at': instance.created_at,
      'purity': instance.purity,
      'id': instance.id,
    };
