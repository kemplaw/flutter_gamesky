import 'package:flutter/material.dart';
import 'package:flutter_gamesky/layout/index.dart';
import 'package:flutter_gamesky/pages/games/index.dart';
import 'package:flutter_gamesky/pages/home/index.dart';
import 'package:flutter_gamesky/pages/mine/index.dart';
import 'package:flutter_gamesky/pages/moments/index.dart';
import 'package:flutter_gamesky/pages/strategy/index.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State {
  int currentPageIndex = 0; // 当前页面的位置

  List<Widget> pageList = [
    HomePage(),
    GamesPage(),
    StrategyPage(),
    MomentsPage(),
    MinePage()
  ];

  void _handleTabChange(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[currentPageIndex],
      bottomNavigationBar: BottomTabBar(
        onChange: _handleTabChange,
      ),
    );
  }
}
