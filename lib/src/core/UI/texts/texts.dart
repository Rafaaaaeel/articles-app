import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final String _title;

  const AppTitle(this._title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

class AppSubTitle extends StatelessWidget {
  final String _title;

  const AppSubTitle(this._title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}

class AppTitleAbstract extends StatelessWidget {
  final String _title;

  const AppTitleAbstract(this._title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: const TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}
