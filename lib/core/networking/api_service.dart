import 'package:clean_architectue/core/networking/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.newestBooks)
  Future<Map<String, dynamic>> getNewestBooks();
  @GET(ApiConstants.featuredBook)
  Future<Map<String, dynamic>> getFeaturedBooks();
}
