import 'package:article_app/src/core/utils/constant/network_constant.dart';
import 'package:article_app/src/features/article/domain/models/api_response_model.dart';
import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'articles_api_service.g.dart';

@RestApi(baseUrl: apiUrl)
abstract class ArticlesApi {
  factory ArticlesApi(Dio dio) = _ArticlesApi;

  @GET('/all-sections/7.json')
  Future<ApiResponse<List<ArticleModel>>> fetchArticles({
    @Query('api-key') String? apiKey,
  });
}
