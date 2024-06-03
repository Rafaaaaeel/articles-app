import 'package:article_app/src/core/UI/texts/texts.dart';
import 'package:article_app/src/core/UI/widgets/shapes/circle.dart';
import 'package:article_app/src/core/utils/constant/padding_constant.dart';
import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:article_app/src/features/article/presentation/widgets/article_card.dart';
import 'package:flutter/material.dart';

class ArticleHeader extends StatelessWidget {
  final ArticleModel _article;
  final void Function(ArticleModel) _didTouchItem;

  const ArticleHeader(this._didTouchItem, this._article, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _didTouchItem(_article);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ArticleCard(_article),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: REGULAR),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: REGULAR),
                Row(
                  children: [
                    const Circle('1'),
                    const SizedBox(width: REGULAR),
                    AppTitleAbstract(_article.publishedDate!),
                  ],
                ),
                const SizedBox(height: REGULAR),
                AppTitle(_article.title!),
                const SizedBox(height: REGULAR),
                AppTitleAbstract(_article.abstract!),
              ],
            ),
          )
        ],
      ),
    );
  }

  void didTouchHeader() {}
}
