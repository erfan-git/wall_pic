import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wall_pic_app/config/constans.dart';
import 'package:wall_pic_app/domain/models/photo_data/photo_data.dart';
import 'package:wall_pic_app/domain/models/photo_list/photo_list.dart';

part 'photo_service.g.dart';

@RestApi(baseUrl: "$BASE_URL")
abstract class PhotoService {
  factory PhotoService(Dio dio, {String baseUrl}) = _PhotoService;

  @GET("search")
  Future<PhotoList> getPhotoList(
      @Query("page") int text,
      );

  @GET("w/{id}")
  Future<PhotoData> getPhoto(
      @Path("id") String id,
      );
}

