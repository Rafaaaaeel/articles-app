import 'package:article_app/src/core/UI/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class CategoryTag extends StatelessWidget {
  final String _text;

  const CategoryTag(this._text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          _text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
