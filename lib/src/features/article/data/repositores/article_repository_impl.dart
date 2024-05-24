import 'package:article_app/src/core/network/errors/failure.dart';
import 'package:article_app/src/core/network/errors/server_failure.dart';
import 'package:article_app/src/core/network/exceptions/server_exception.dart';
import 'package:article_app/src/core/utils/constant/network_constant.dart';
import 'package:article_app/src/features/article/data/data_source/remote/articles_api_service.dart';
import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:article_app/src/features/article/domain/models/articles_params.dart';
import 'package:article_app/src/features/article/domain/repositores/articles_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ArticlesRepositoryImpl implements ArticlesRepository {
  final ArticlesApi _articlesApi;

  ArticlesRepositoryImpl(this._articlesApi);

  @override
  Future<Either<Failure, List<ArticleModel>>> fetchArticles(
      ArticlesParams params) async {
    try {
      final result = await _articlesApi.fetchArticles(apiKey: apiKey);

      return Right(result.results);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on DioException catch (e) {
      return Left(ServerFailure(e.message!, 500));
    }
  }
}
