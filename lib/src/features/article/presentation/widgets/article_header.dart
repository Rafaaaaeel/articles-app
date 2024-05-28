import 'package:article_app/src/core/UI/texts/texts.dart';
import 'package:article_app/src/core/UI/widgets/shapes/circle.dart';
import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:article_app/src/features/article/presentation/widgets/article_card.dart';
import 'package:flutter/material.dart';

class ArticleHeader extends StatelessWidget {
  final ArticleModel _article;

  const ArticleHeader(this._article, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ArticleCard(_article),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Row(
                children: [
                  const Circle(),
                  const SizedBox(width: 8),
                  AppTitleAbstract(_article.publishedDate!),
                ],
              ),
              const SizedBox(height: 8),
              AppTitle(_article.title!),
              const SizedBox(height: 8),
              AppTitleAbstract(_article.abstract!),
            ],
          ),
        )
      ],
    );
  }
}
