import 'dart:async';

import 'package:wall_pic_app/base/domain/usecase.dart';
import 'package:wall_pic_app/domain/models/photo_data/photo_data.dart';
import 'package:wall_pic_app/domain/repositories/photo/photo_service_repo.dart';

class GetPhotoDataUseCase extends UseCase<PhotoData?, String> {
  final repository = PhotoRepositoryImpl();

  @override
  Future<Stream<PhotoData?>> buildUseCaseStream(String? params) async {
    final StreamController<PhotoData> controller = StreamController();

    repository
        .getPhotoData(params!)
        .then((value) => controller.add(value))
        .catchError((e) => controller.addError(e));

    return controller.stream;
  }
}
