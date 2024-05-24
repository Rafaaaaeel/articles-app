import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:flutter/material.dart';

class ArticleContent extends StatelessWidget {
  final ArticleModel _article;

  const ArticleContent(this._article, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(_article.title!);
  }
}
