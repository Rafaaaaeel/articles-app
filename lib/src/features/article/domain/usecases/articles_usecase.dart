import 'package:article_app/src/core/network/errors/failure.dart';
import 'package:article_app/src/core/utils/usecases/usecase.dart';
import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:article_app/src/features/article/domain/models/articles_params.dart';
import 'package:article_app/src/features/article/domain/repositores/articles_repository.dart';
import 'package:dartz/dartz.dart';

class ArticlesUseCase extends UseCase<List<ArticleModel>, ArticlesParams> {
  final ArticlesRepository _articlesRepository;

  ArticlesUseCase(this._articlesRepository);

  @override
  Future<Either<Failure, List<ArticleModel>>> call(
      ArticlesParams params) async {
    final result = await _articlesRepository.fetchArticles(params);
    return result.fold((l) => left(l), (r) => right(r));
  }
}
