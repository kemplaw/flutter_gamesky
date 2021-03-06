import 'package:flutter/material.dart';
import 'package:flutter_gamesky/pages/index.dart';

void main(List<String> args) {
  runApp(AppEntry());
}

class AppEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IndexPage(),
    );
  }
}
