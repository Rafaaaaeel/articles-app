import 'package:article_app/src/core/UI/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
