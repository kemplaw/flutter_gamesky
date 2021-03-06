import 'package:flutter/material.dart';
import 'package:flutter_gamesky/utils/index.dart';

class HomeTabBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _HomeTabBarState createState() {
    return _HomeTabBarState();
  }

  @override
  Size get preferredSize => Size.fromHeight(10);
}

class _HomeTabBarState extends State<HomeTabBar> with TickerProviderStateMixin {
  TabController _tabController;

  final List<Widget> _tabs = [
    Text('关注'),
    Text('头条'),
    Text('PC游戏'),
    Text('主机游戏'),
    Text('娱乐'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: TabBar(
              tabs: _tabs,
              controller: _tabController,
              isScrollable: true,
              indicator: BoxDecoration(),
              unselectedLabelColor: defaultLabelColor,
              labelColor: defaultSelectedLabelColor,
            ),
          ),
          Text('icon')
        ],
      ),
    );
  }
}
