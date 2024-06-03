import 'package:article_app/src/core/UI/texts/texts.dart';
import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArticleDetail extends StatefulWidget {
  final ArticleModel _article;

  const ArticleDetail(this._article, {super.key});

  @override
  State<ArticleDetail> createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppTitle('Details'),
        centerTitle: false,
      ),
      body: Center(
        child: Text(widget._article.title!),
      ),
    );
  }
}
