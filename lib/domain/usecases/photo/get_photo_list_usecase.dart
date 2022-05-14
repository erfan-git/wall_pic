import 'dart:async';

import 'package:wall_pic_app/base/domain/usecase.dart';
import 'package:wall_pic_app/domain/models/photo_list/photo_list.dart';
import 'package:wall_pic_app/domain/repositories/photo/photo_service_repo.dart';

class GetPhotoListUseCase extends UseCase<PhotoList?, int> {
  final repository = PhotoRepositoryImpl();

  @override
  Future<Stream<PhotoList?>> buildUseCaseStream(int? param) async {
    final StreamController<PhotoList> controller = StreamController();

    repository
        .getPhotoList(param)
        .then((value) => controller.add(value))
        .catchError((e) => controller.addError(e));

    return controller.stream;
  }
}
