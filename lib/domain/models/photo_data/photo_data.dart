import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wall_pic_app/domain/models/photo/photo.dart';

part 'photo_data.freezed.dart';
part 'photo_data.g.dart';

@freezed
class PhotoData with _$PhotoData {
  factory PhotoData({
    Photo? data,
  }) = _PhotoData;

  factory PhotoData.fromJson(Map<String, dynamic> json) =>
      _$PhotoDataFromJson(json);

}