import 'package:article_app/src/core/network/errors/failure.dart';
import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:article_app/src/features/article/domain/models/articles_params.dart';
import 'package:dartz/dartz.dart';

abstract interface class ArticlesRepository {
  Future<Either<Failure, List<ArticleModel>>> fetchArticles(
      ArticlesParams params);
}
