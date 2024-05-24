import 'package:article_app/src/core/utils/injection/injection.dart';
import 'package:article_app/src/features/article/data/data_source/remote/articles_api_service.dart';
import 'package:article_app/src/features/article/data/repositores/article_repository_impl.dart';
import 'package:article_app/src/features/article/domain/repositores/articles_repository.dart';
import 'package:article_app/src/features/article/domain/usecases/articles_usecase.dart';
import 'package:article_app/src/features/article/presentation/bloc/articles_bloc.dart';

articleInjections() async {
  sl.registerSingleton<ArticlesApi>(ArticlesApi(sl()));
  sl.registerSingleton<ArticlesRepository>(ArticlesRepositoryImpl(sl()));
  sl.registerSingleton<ArticlesUseCase>(ArticlesUseCase(sl()));
  sl.registerFactory(() => ArticlesBloc(sl()));
}
