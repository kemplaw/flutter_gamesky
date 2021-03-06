import 'package:flutter/material.dart';
import 'package:flutter_gamesky/utils/index.dart';

class BottomTabBar extends StatefulWidget {
  final ValueChanged<int> onChange;

  BottomTabBar({this.onChange});

  @override
  _BottomTabBarState createState() => _BottomTabBarState(onChange: onChange);
}

class _BottomTabBarState extends State {
  int activedTabIndex = 0;

  final ValueChanged<int> onChange;

  _BottomTabBarState({this.onChange});

  final List<BottomNavigationBarItem> _bottomBarGroup = [
    BottomNavigationBarItem(
        icon: Icon(Icons.article_outlined),
        activeIcon: Icon(Icons.article),
        label: '首页'),
    BottomNavigationBarItem(
        icon: Icon(Icons.gamepad_outlined),
        activeIcon: Icon(Icons.gamepad),
        label: '找游戏'),
    BottomNavigationBarItem(
        icon: Icon(Icons.book_outlined),
        activeIcon: Icon(Icons.book),
        label: '查攻略'),
    BottomNavigationBarItem(
        icon: Icon(Icons.add_circle_outline),
        activeIcon: Icon(Icons.add_circle),
        label: '圈子'),
    BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        activeIcon: Icon(Icons.person),
        label: '我的'),
  ];

  void _handleTap(int index) {
    setState(() {
      activedTabIndex = index;
      onChange(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: activedTabIndex,
      items: _bottomBarGroup,
      unselectedFontSize: 10,
      backgroundColor: Colors.white,
      selectedFontSize: 10,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      unselectedItemColor: defaultLabelColor,
      selectedItemColor: Color.fromRGBO(50, 50, 50, 1),
      onTap: _handleTap,
    );
  }
}
