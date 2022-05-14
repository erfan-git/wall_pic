import 'package:freezed_annotation/freezed_annotation.dart';

part 'thumbs.freezed.dart';
part 'thumbs.g.dart';

@freezed
class Thumbs with _$Thumbs {
  factory Thumbs({
    String? large,
    String? original,
    String? small,
  }) = _Thumbs;

  factory Thumbs.fromJson(Map<String, dynamic> json) =>
      _$ThumbsFromJson(json);

}