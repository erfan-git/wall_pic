import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wall_pic_app/base/enums/request_status.dart';
import 'package:wall_pic_app/domain/models/photo/photo.dart';

part 'detail_page_state.freezed.dart';

@freezed
class DetailPageState with _$DetailPageState {
  factory DetailPageState({
    @Default(AsyncRequestStatus.initial) AsyncRequestStatus? requestStatus,
    Photo? photo,
  }) = _DetailPageState;
}
