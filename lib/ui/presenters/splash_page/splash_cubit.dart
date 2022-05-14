import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wall_pic_app/base/enums/request_status.dart';

import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(SplashState initialState) : super(initialState);

  void startTimer() {
    Future.delayed(
      Duration(seconds: 2),
          () {
        emit(
          state.copyWith(
            requestStatus: AsyncRequestStatus.success,
          ),
        );
      },
    );
  }
}
