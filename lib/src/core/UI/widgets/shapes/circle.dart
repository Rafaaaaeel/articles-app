import 'package:article_app/src/core/UI/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final String _number;

  const Circle(this._number, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          _number,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
