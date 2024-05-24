import 'package:article_app/src/features/article/domain/models/article_model.dart';

abstract class ArticlesState {
  const ArticlesState();
}

class LoadingArticlesState extends ArticlesState {}

class FailedArticlesState extends ArticlesState {
  final String errorMessage;

  FailedArticlesState(this.errorMessage);
}

class SucceededArticlesState extends ArticlesState {
  final List<ArticleModel> articles;

  SucceededArticlesState(this.articles);
}
