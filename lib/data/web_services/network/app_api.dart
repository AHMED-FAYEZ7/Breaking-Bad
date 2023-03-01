import 'package:breaking_bad/app/constant.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../responses/responses.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClint {
  factory AppServiceClint(Dio dio, {String baseUrl}) = _AppServiceClint;

  @GET("character")
  Future<CharacterResponse> getCharacter();
}
