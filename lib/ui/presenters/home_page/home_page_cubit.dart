import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wall_pic_app/base/enums/request_status.dart';
import 'package:wall_pic_app/config/constans.dart';
import 'package:wall_pic_app/domain/models/photo/photo.dart';
import 'package:wall_pic_app/domain/usecases/photo/get_photo_list_usecase.dart';
import 'package:wall_pic_app/ui/presenters/home_page/home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(HomePageState initialState) : super(initialState);

  final getPhotoListUseCase = GetPhotoListUseCase();

  void getPhotoList(int page) async {
    if (page == 1)
      emit(
        state.copyWith(
          requestStatus: AsyncRequestStatus.submitting,
          // paginateLoading: page != 1,
          // page: page,
        ),
      );
    else
      emit(
        state.copyWith(
          paginateLoading: true,
          // page: page,
        ),
      );

    if (await checkInternet() && state.photoList != null
        ? state.photoList!.meta!.last_page != page
        : true) {
      getPhotoListUseCase.execute((event) {
        if (event != null) {
          List<Photo> list = List.from(state.photos ?? [])..addAll(event.data!);

          emit(
            state.copyWith(
                requestStatus: AsyncRequestStatus.success,
                paginateLoading: false,
                photoList: event,
                photos: list,
                page: page),
          );
        }
      }, (e) {
        print(e);
        emit(
          state.copyWith(
            requestStatus: AsyncRequestStatus.error,
            paginateLoading: false,
          ),
        );
      }, params: state.page);
    } else {
      emit(
        state.copyWith(
          requestStatus: AsyncRequestStatus.error,
          paginateLoading: false,
        ),
      );
    }
  }
}
