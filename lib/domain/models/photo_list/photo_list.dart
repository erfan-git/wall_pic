import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wall_pic_app/domain/models/meta/meta.dart';
import 'package:wall_pic_app/domain/models/photo/photo.dart';

part 'photo_list.freezed.dart';
part 'photo_list.g.dart';

@freezed
class PhotoList with _$PhotoList {
  factory PhotoList({
    List<Photo>? data,
    Meta? meta,
  }) = _PhotoList;

  factory PhotoList.fromJson(Map<String, dynamic> json) =>
      _$PhotoListFromJson(json);
}
