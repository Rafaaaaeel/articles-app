import 'package:article_app/src/core/UI/texts/texts.dart';
import 'package:article_app/src/core/UI/widgets/colors/colors.dart';
import 'package:article_app/src/core/UI/widgets/shapes/circle.dart';
import 'package:article_app/src/features/article/domain/models/article_model.dart';
import 'package:article_app/src/features/article/domain/models/media_meta_data_model.dart';
import 'package:article_app/src/features/article/domain/models/media_model.dart';
import 'package:flutter/material.dart';

class ArticleRow extends StatelessWidget {
  final ArticleModel _article;
  final int _index;
  final void Function(ArticleModel) _didTouchItem;

  const ArticleRow(this._didTouchItem, this._index, this._article, {super.key});

  @override
  Widget build(BuildContext context) {
    MediaModel? media = _article.media?.first;
    MediaMetaDataModel? mediaData = media?.mediaMetadata?.first;
    String imageUrl = mediaData?.url ??
        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.iprocess.com.br%2Fplaceholder-png%2F&psig=AOvVaw3j0jW-1UAjz_9J2Ou4Kx6N&ust=1717256586422000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIigjbiduIYDFQAAAAAdAAAAABAE";

    return InkWell(
      onTap: () {
        _didTouchItem(_article);
      },
      child: SizedBox(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBody(),
              _buildBox(imageUrl),
            ],
          ),
        ),
      ),
    );
  }

  void _didTouchRow() {}

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Circle(_index.toString()),
            const SizedBox(width: 8),
            AppTitleAbstract(_article.publishedDate!)
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 180,
          height: 80,
          child: AppSubTitle(_article.title!),
        )
      ],
    );
  }

  Widget _buildBox(String imageUrl) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          height: 180,
        ),
      ),
    );
  }
}
