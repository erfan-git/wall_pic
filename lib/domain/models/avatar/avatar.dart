import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar.freezed.dart';
part 'avatar.g.dart';


@freezed
class Avatar with _$Avatar {
  factory Avatar({
    @JsonKey(name: '128px') String? large2x,
    @JsonKey(name: '200px') String? large,
    @JsonKey(name: '20px') String? medium,
    @JsonKey(name: '32px') String? tiny,
  }) = _Avatar;

  factory Avatar.fromJson(Map<String, dynamic> json) =>
      _$AvatarFromJson(json);
}