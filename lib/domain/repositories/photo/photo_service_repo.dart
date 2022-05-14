import 'package:wall_pic_app/domain/models/photo_data/photo_data.dart';
import 'package:wall_pic_app/domain/models/photo_list/photo_list.dart';
import 'package:wall_pic_app/domain/repositories/photo/photo_service.dart';
import 'package:dio/dio.dart';

abstract class PhotoServiceRepository {
  Future<PhotoList> getPhotoList(int page);

  Future<PhotoData> getPhotoData(String id);
}

class PhotoRepositoryImpl implements PhotoServiceRepository {
  Future<PhotoService> service() async {
    return PhotoService(
      Dio(
        BaseOptions(
          followRedirects: false,
        ),
      ),
    );
  }

  @override
  Future<PhotoList> getPhotoList(int? page) async {
    final ser = await service();
    return await ser.getPhotoList(page ?? 1);
  }

  @override
  Future<PhotoData> getPhotoData(String id) async {
    final ser = await service();
    return await ser.getPhoto(id);
  }
}
