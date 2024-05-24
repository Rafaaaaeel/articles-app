import 'package:article_app/src/features/article/domain/models/articles_params.dart';
import 'package:article_app/src/features/article/domain/usecases/articles_usecase.dart';
import 'package:article_app/src/features/article/presentation/bloc/articles_event.dart';
import 'package:article_app/src/features/article/presentation/bloc/articles_state.dart';
import 'package:bloc/bloc.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  final ArticlesUseCase _articlesUseCase;

  ArticlesBloc(this._articlesUseCase) : super(LoadingArticlesState()) {
    on<OnFetchingArticlesEvent>(_onFetchingArticlesEvent);
  }

  Future<void> _onFetchingArticlesEvent(
      OnFetchingArticlesEvent event, Emitter<ArticlesState> emitter) async {
    if (event.loading) {
      emitter(LoadingArticlesState());
    }

    final result = await _articlesUseCase.call(
      ArticlesParams(period: event.period),
    );

    result.fold(
      (l) => emitter(
        FailedArticlesState(l.errorMessage),
      ),
      (r) => emitter(
        SucceededArticlesState(r),
      ),
    );
  }

}
