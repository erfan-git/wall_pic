// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      category: json['category'] as String?,
      created_at: json['created_at'] as String?,
      file_type: json['file_type'] as String?,
      purity: json['purity'] as String?,
      id: json['id'] as String?,
      path: json['path'] as String?,
      ratio: json['ratio'] as String?,
      resolution: json['resolution'] as String?,
      short_url: json['short_url'] as String?,
      source: json['source'] as String?,
      url: json['url'] as String?,
      dimension_x: json['dimension_x'] as int?,
      dimension_y: json['dimension_y'] as int?,
      favorites: json['favorites'] as int?,
      file_size: json['file_size'] as int?,
      views: json['views'] as int?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      thumbs: json['thumbs'] == null
          ? null
          : Thumbs.fromJson(json['thumbs'] as Map<String, dynamic>),
      uploader: json['uploader'] == null
          ? null
          : Uploader.fromJson(json['uploader'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'category': instance.category,
      'created_at': instance.created_at,
      'file_type': instance.file_type,
      'purity': instance.purity,
      'id': instance.id,
      'path': instance.path,
      'ratio': instance.ratio,
      'resolution': instance.resolution,
      'short_url': instance.short_url,
      'source': instance.source,
      'url': instance.url,
      'dimension_x': instance.dimension_x,
      'dimension_y': instance.dimension_y,
      'favorites': instance.favorites,
      'file_size': instance.file_size,
      'views': instance.views,
      'tags': instance.tags,
      'colors': instance.colors,
      'thumbs': instance.thumbs,
      'uploader': instance.uploader,
    };
