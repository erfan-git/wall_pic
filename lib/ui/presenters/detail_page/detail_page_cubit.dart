import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wall_pic_app/base/enums/request_status.dart';
import 'package:wall_pic_app/config/constans.dart';
import 'package:wall_pic_app/domain/usecases/photo/get_photo_data_usecase.dart';
import 'package:wall_pic_app/ui/presenters/detail_page/detail_page_state.dart';

class DetailPageCubit extends Cubit<DetailPageState> {
  DetailPageCubit(DetailPageState initialState) : super(initialState);

  final getPhotoUseCase = GetPhotoDataUseCase();

  void getPhoto(String id) async {
    emit(
      state.copyWith(
        requestStatus: AsyncRequestStatus.submitting,
      ),
    );

    if (await checkInternet()) {
      getPhotoUseCase.execute(
        (event) {
          if (event != null) {
            emit(
              state.copyWith(
                requestStatus: AsyncRequestStatus.success,
                photo: event.data,
              ),
            );
          }
        },
        (e) {
          print(e);
          emit(
            state.copyWith(
              requestStatus: AsyncRequestStatus.error,
            ),
          );
        },
        params: id,
      );
    } else {
      emit(
        state.copyWith(
          requestStatus: AsyncRequestStatus.error,
        ),
      );
    }
  }
}
