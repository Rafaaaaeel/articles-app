import 'package:article_app/src/core/UI/texts/texts.dart';
import 'package:article_app/src/core/utils/constant/app_text_constant.dart';
import 'package:article_app/src/core/utils/injection/injection.dart';
import 'package:article_app/src/features/article/presentation/pages/articles_home.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await injections();
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const AppTitle(NEWS),
          centerTitle: false,
        ),
        body: const ArticlesHome(),
      ),
    ),
  );
}
