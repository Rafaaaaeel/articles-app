import 'package:article_app/src/core/UI/texts/texts.dart';
import 'package:article_app/src/core/utils/constant/app_text_constant.dart';
import 'package:article_app/src/core/utils/constant/padding_constant.dart';
import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:article_app/src/features/article/presentation/widgets/category_tag.dart';
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
    final ArticleModel article = widget._article;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryTag(article.section!),
                  AppTitleAbstract(article.publishedDate!)
                ],
              ),
              const SizedBox(height: REGULAR),
              AppTitle(article.title!),
              const SizedBox(height: REGULAR),
              AppSubTitleGrey(article.abstract!),
              const SizedBox(height: 16),
              Image.network(article.media!.first.mediaMetadata![2].url!),
              const SizedBox(height: 16),
              const Text(
                LOREM_IPSUM,
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
