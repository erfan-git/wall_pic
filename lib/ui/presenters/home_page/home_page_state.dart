import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wall_pic_app/base/enums/request_status.dart';
import 'package:wall_pic_app/domain/models/photo/photo.dart';
import 'package:wall_pic_app/domain/models/photo_list/photo_list.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState({
    @Default(AsyncRequestStatus.initial) AsyncRequestStatus? requestStatus,
    @Default(1) int? page,
    @Default(false) bool? paginateLoading,
    PhotoList? photoList,
    List<Photo>? photos,
  }) = _HomePageState;
}
