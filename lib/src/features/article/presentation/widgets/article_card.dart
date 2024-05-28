import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  final ArticleModel _article;

  const ArticleCard(this._article, {super.key});

  @override
  Widget build(BuildContext context) {
    final String? imageUrl = _article.media!.first.mediaMetadata![2].url;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.hardEdge,
      child: Image.network(imageUrl!),
    );
  }
}
