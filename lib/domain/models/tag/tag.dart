import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag with _$Tag {
  factory Tag({
    String? alias,
    String? category,
    int? category_id,
    String? name,
    String? created_at,
    String? purity,
    int? id,}) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) =>
      _$TagFromJson(json);

}