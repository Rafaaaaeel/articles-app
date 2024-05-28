import 'package:article_app/src/core/UI/widgets/colors/colors.dart';
import 'package:article_app/src/core/utils/injection/injection.dart';
import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:article_app/src/features/article/domain/usecases/articles_usecase.dart';
import 'package:article_app/src/features/article/presentation/bloc/articles_bloc.dart';
import 'package:article_app/src/features/article/presentation/bloc/articles_event.dart';
import 'package:article_app/src/features/article/presentation/bloc/articles_state.dart';
import 'package:article_app/src/features/article/presentation/widgets/article_header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class ArticlesHome extends StatefulWidget {
  const ArticlesHome({super.key});

  @override
  State<ArticlesHome> createState() => _ArticlesHomeStates();
}

class _ArticlesHomeStates extends State<ArticlesHome> {
  final ArticlesBloc _bloc = ArticlesBloc(sl<ArticlesUseCase>());

  List<ArticleModel> _articles = [];

  @override
  void initState() {
    _callArticles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  void _callArticles() {
    _bloc.add(OnFetchingArticlesEvent(1, true));
  }

  Widget _buildBody() {
    return BlocConsumer<ArticlesBloc, ArticlesState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state is SucceededArticlesState) {
          _articles = state.articles;
        }
      },
      builder: (context, state) {
        if (state is SucceededArticlesState) {
          return ListView(
            children: [
              ArticleHeader(_articles.first),
            ],
          );
        }
        return const Center(
          child: CircularProgressIndicator(
            color: mainColor,
          ),
        );
      },
    );
  }
}

// return ListView.separated(
//             itemCount: _articles.length,
//             scrollDirection: Axis.vertical,
//             separatorBuilder: (_, index) => const SizedBox(width: 8),
//             itemBuilder: (context, index) {
//               return Text('data');
//             },
//           );