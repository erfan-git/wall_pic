// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      current_page: json['current_page'] as int?,
      last_page: json['last_page'] as int?,
      per_page: json['per_page'] as int?,
      total: json['total'] as int?,
      query: json['query'] as String?,
      seed: json['seed'] as String?,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'current_page': instance.current_page,
      'last_page': instance.last_page,
      'per_page': instance.per_page,
      'total': instance.total,
      'query': instance.query,
      'seed': instance.seed,
    };
