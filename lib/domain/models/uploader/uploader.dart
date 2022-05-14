import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wall_pic_app/domain/models/avatar/avatar.dart';
import 'package:flutter/foundation.dart';

part 'uploader.freezed.dart';
part 'uploader.g.dart';

@freezed
class Uploader with _$Uploader {
  factory Uploader({
    Avatar? avatar,
    String? group,
    String? username,
  }) = _Uploader;

  factory Uploader.fromJson(Map<String, dynamic> json) =>
      _$UploaderFromJson(json);

}
