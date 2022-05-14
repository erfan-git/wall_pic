import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wall_pic_app/base/enums/request_status.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {

  factory SplashState({
    @Default(AsyncRequestStatus.initial) AsyncRequestStatus? requestStatus,
  }) = _SplashState;
}