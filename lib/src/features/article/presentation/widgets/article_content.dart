import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:flutter/material.dart';

class ArticleContent extends StatelessWidget {
  final ArticleModel _article;

  const ArticleContent(this._article, {super.key});

  @override
  Widget build(BuildContext context) {
    final double radius = _article.media!.first.mediaMetadata![1].height! / 1;
    final String? imageUrl = _article.media!.first.mediaMetadata![0].url;
    print('=========== IMAGE URL========= $imageUrl');
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Image.network(imageUrl!),
        ),
        const SizedBox(width: 32),
        Flexible(
          child: Text(_article.title!),
        )
      ],
    );
  }
}
