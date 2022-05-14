import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wall_pic_app/domain/models/tag/tag.dart';
import 'package:wall_pic_app/domain/models/thumbs/thumbs.dart';
import 'package:wall_pic_app/domain/models/uploader/uploader.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  factory Photo({
    String? category,
    String? created_at,
    String? file_type,
    String? purity,
    String? id,
    String? path,
    String? ratio,
    String? resolution,
    String? short_url,
    String? source,
    String? url,
    int? dimension_x,
    int? dimension_y,
    int? favorites,
    int? file_size,
    int? views,
    List<Tag>? tags,
    List<String>? colors,
    Thumbs? thumbs,
    Uploader? uploader,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

}
